import pyodbc
from faker import Faker
import random

conn_str = (
    "DRIVER={SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)

fake = Faker('es_ES')
Faker.seed(123)

monedas = {
    'BTC': {'cantidad': (0.0001, 3), 'valor': (40000, 70000)},
    'ETH': {'cantidad': (0.001, 10), 'valor': (1500, 4000)},
    'USDT': {'cantidad': (10, 100000), 'valor': (1.00, 1.00)},
    'BNB': {'cantidad': (0.01, 50), 'valor': (200, 500)},
    'ADA': {'cantidad': (10, 100000), 'valor': (0.3, 1.5)},
    'SOL': {'cantidad': (0.1, 500), 'valor': (20, 200)},
    'XRP': {'cantidad': (10, 50000), 'valor': (0.3, 2)},
    'DOT': {'cantidad': (1, 1000), 'valor': (3, 25)},
}

def crear_tabla_monedas(cursor):
    sql = """
    IF NOT EXISTS (
        SELECT * FROM sysobjects WHERE name='monedas_digitales' AND xtype='U'
    )
    CREATE TABLE monedas_digitales (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        tipo_moneda NVARCHAR(10) NOT NULL,
        cantidad FLOAT NOT NULL,
        valor_actual FLOAT NOT NULL,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """
    cursor.execute(sql)

def monedas_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('monedas_digitales', 'U') IS NULL
    CREATE TABLE monedas_digitales (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        simbolo NVARCHAR(10),
        valor DECIMAL(18,4)
    );
    """

    nombres = ['Bitcoin', 'Ethereum', 'Litecoin', 'Ripple', 'Cardano']
    simbolos = ['BTC', 'ETH', 'LTC', 'XRP', 'ADA']

    inserts = []
    for i in range(cantidad):
        idx = i % len(nombres)
        nombre = nombres[idx]
        simbolo = simbolos[idx]
        valor = round(1000 + i * 50 + random.random(), 4)
        insert = f"""
        INSERT INTO monedas_digitales (nombre, simbolo, valor)
        VALUES ('{nombre}', '{simbolo}', {valor});
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)


def generar_moneda(usuario_id):
    tipo = random.choice(list(monedas.keys()))
    rango = monedas[tipo]
    cantidad = round(random.uniform(*rango['cantidad']), 8)
    valor_actual = round(random.uniform(*rango['valor']), 2)
    return (usuario_id, tipo, cantidad, valor_actual)

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

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_monedas(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios para asignar monedas digitales.")
                return

            insertar_monedas(cursor, ids_usuarios)
            conn.commit()
            print(f"Monedas digitales insertadas para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
