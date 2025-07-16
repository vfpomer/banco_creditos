import pyodbc
from faker import Faker
import random

# Conexión a la base de datos
conn_str = (
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)

fake = Faker('es_ES')
Faker.seed(123)
random.seed(123)

# Tipos de criptomonedas y sus rangos
monedas = {
    'BTC':  {'cantidad': (0.0001, 3),     'valor': (40000, 70000)},
    'ETH':  {'cantidad': (0.001, 10),     'valor': (1500, 4000)},
    'USDT': {'cantidad': (10, 100000),    'valor': (1.00, 1.00)},
    'BNB':  {'cantidad': (0.01, 50),      'valor': (200, 500)},
    'ADA':  {'cantidad': (10, 100000),    'valor': (0.3, 1.5)},
    'SOL':  {'cantidad': (0.1, 500),      'valor': (20, 200)},
    'XRP':  {'cantidad': (10, 50000),     'valor': (0.3, 2)},
    'DOT':  {'cantidad': (1, 1000),       'valor': (3, 25)},
}

# Crear la tabla si no existe
def crear_tabla_monedas(cursor):
    sql = """
    IF OBJECT_ID('monedas_digitales', 'U') IS NULL
    BEGIN
        CREATE TABLE monedas_digitales (
            id INT IDENTITY(1,1) PRIMARY KEY,
            usuario_id INT NOT NULL,
            tipo_moneda NVARCHAR(10) NOT NULL,
            cantidad FLOAT NOT NULL,
            valor_actual FLOAT NOT NULL,
            FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
        );
    END
    """
    cursor.execute(sql)

# Generar una moneda aleatoria para un usuario
def generar_moneda(usuario_id):
    tipo = random.choice(list(monedas.keys()))
    rango = monedas[tipo]
    cantidad = round(random.uniform(*rango['cantidad']), 8)
    valor_actual = round(random.uniform(*rango['valor']), 2)
    return (usuario_id, tipo, cantidad, valor_actual)

# Insertar monedas para cada usuario
def insertar_monedas(cursor, ids_usuarios, max_monedas_por_usuario=3):
    datos = []
    for usuario_id in ids_usuarios:
        num_monedas = random.randint(0, max_monedas_por_usuario)
        for _ in range(num_monedas):
            datos.append(generar_moneda(usuario_id))

    if datos:
        sql = """
        INSERT INTO monedas_digitales (usuario_id, tipo_moneda, cantidad, valor_actual)
        VALUES (?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, datos)
        print(f" Insertadas {len(datos)} monedas digitales.")

# Obtener IDs de los usuarios existentes
def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

# Generador de SQL para pruebas (opcional)
def monedas_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('monedas_digitales', 'U') IS NULL
    CREATE TABLE monedas_digitales (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        tipo_moneda NVARCHAR(10) NOT NULL,
        cantidad FLOAT NOT NULL,
        valor_actual FLOAT NOT NULL,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """

    inserts = []
    for i in range(cantidad):
        usuario_id = i + 1
        tipo = "BTC"
        cantidad_valor = round(random.uniform(0.0001, 3), 8)
        valor_actual = round(random.uniform(40000, 70000), 2)
        insert = f"""
        INSERT INTO monedas_digitales (usuario_id, tipo_moneda, cantidad, valor_actual)
        VALUES ({usuario_id}, '{tipo}', {cantidad_valor}, {valor_actual});
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)

#n8n
def leer_monedas():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM monedas_digitales")
            filas = cursor.fetchall()
            monedas = []
            for fila in filas:
                monedas.append({
                    "id": fila.id,
                    "usuario_id": fila.usuario_id,
                    "tipo_moneda": fila.tipo_moneda,
                    "cantidad": float(fila.cantidad),
                    "valor_actual": float(fila.valor_actual)
                })
            return monedas
    except Exception as e:
        print("Error al leer monedas digitales:", e)
        return []


# MAIN
def main():
    try:
        print(" Conectando a Azure SQL...")
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_monedas(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print(" No hay usuarios disponibles para asignar monedas.")
                return

            insertar_monedas(cursor, ids_usuarios)
            conn.commit()

            print(f" Monedas digitales asignadas a {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print(" Error al insertar monedas digitales:", e)

if __name__ == "__main__":
    main()
