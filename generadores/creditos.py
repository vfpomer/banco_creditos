import pyodbc
from faker import Faker
import random
from datetime import timedelta
from dotenv import load_dotenv
import os

# Cargar variables del archivo .env
load_dotenv()

# Parámetros de conexión
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")

# Cadena de conexión segura
conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={server};"
    f"DATABASE={database};"
    f"UID={username};"
    f"PWD={password};"
)

# Faker en español
fake = Faker('es_ES')
Faker.seed(42)

# Crear tabla 'creditos'
def crear_tabla_creditos_si_no_existe(cursor):
    sql = """
    IF OBJECT_ID('creditos', 'U') IS NOT NULL
        DROP TABLE creditos;

    CREATE TABLE creditos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        monto DECIMAL(18, 2),
        fecha_inicio DATE,
        fecha_fin DATE,
        estado NVARCHAR(50),
        tipo NVARCHAR(50),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """
    cursor.execute(sql)

# Leer créditos
def leer_creditos():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM creditos")
            filas = cursor.fetchall()
            creditos = []
            for fila in filas:
                creditos.append({
                    "id": fila.id,
                    "usuario_id": fila.usuario_id,
                    "monto": float(fila.monto),
                    "fecha_inicio": fila.fecha_inicio.isoformat() if fila.fecha_inicio else None,
                    "fecha_fin": fila.fecha_fin.isoformat() if fila.fecha_fin else None,
                    "estado": fila.estado,
                    "tipo": fila.tipo
                })
            return creditos
    except Exception as e:
        print("Error al leer créditos:", e)
        return []

# Generar un crédito para un usuario
def generar_credito(usuario_id):
    monto = round(random.uniform(1000, 50000), 2)
    fecha_inicio = fake.date_between(start_date='-5y', end_date='today')
    plazo_meses = random.choice([6, 12, 24, 36, 48])
    fecha_fin = fecha_inicio + timedelta(days=30 * plazo_meses)
    estado = random.choice(['Activo', 'Pagado', 'Moroso'])
    tipo = random.choice(['Personal', 'Hipotecario', 'Automotriz', 'Estudiantil'])
    return (usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo)

# Obtener IDs de los usuarios en la tabla 'usuarios'
def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

# Insertar créditos en la tabla 'creditos'
def insertar_creditos(cursor, ids_usuarios, max_creditos_por_usuario=2):
    creditos = []
    for usuario_id in ids_usuarios:
        num_creditos = random.randint(1, max_creditos_por_usuario)
        for _ in range(num_creditos):
            creditos.append(generar_credito(usuario_id))

    if creditos:
        sql = """
        INSERT INTO creditos (
            usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo
        ) VALUES (?, ?, ?, ?, ?, ?);
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, creditos)
        print(f"Insertados {len(creditos)} créditos.")

# Método opcional para generar SQL puro
def creditos_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('creditos', 'U') IS NULL
    CREATE TABLE creditos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        monto DECIMAL(18, 2),
        fecha_inicio DATE,
        fecha_fin DATE,
        estado NVARCHAR(50),
        tipo NVARCHAR(50),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """
    inserts = []
    for i in range(1, cantidad + 1):
        monto = 1000 + i * 500
        fecha_inicio = '2020-01-01'
        fecha_fin = '2025-01-01'
        estado = 'Activo'
        tipo = random.choice(['Personal', 'Hipotecario', 'Automotriz', 'Estudiantil'])
        insert = f"""
        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo)
        VALUES ({i}, {monto}, '{fecha_inicio}', '{fecha_fin}', '{estado}', '{tipo}');
        """
        inserts.append(insert)
    return sql + "\n" + "\n".join(inserts)

# MAIN
def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_creditos_si_no_existe(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios para asignar créditos.")
                return

            insertar_creditos(cursor, ids_usuarios)
            conn.commit()
            print(f"Créditos generados para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print("Error al generar créditos:", e)

if __name__ == "__main__":
    main()
