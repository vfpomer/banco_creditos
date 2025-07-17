import pyodbc
from faker import Faker
import random
from datetime import datetime
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
fake = Faker('es_ES')
Faker.seed(42)
random.seed(42)

def crear_tabla_empleos(cursor):
    sql = """
    IF OBJECT_ID('empleos', 'U') IS NULL
    BEGIN
        CREATE TABLE empleos (
            id INT IDENTITY(1,1) PRIMARY KEY,
            usuario_id INT NOT NULL,
            nombre_empresa NVARCHAR(255),
            cargo NVARCHAR(255),
            salario FLOAT,
            antiguedad_anios INT,
            FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
        )
    END
    """
    cursor.execute(sql)

def leer_empleos():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM empleos")
            filas = cursor.fetchall()
            empleos = []
            for fila in filas:
                empleos.append({
                    "id": fila.id,
                    "usuario_id": fila.usuario_id,
                    "nombre_empresa": fila.nombre_empresa,
                    "cargo": fila.cargo,
                    "salario": float(fila.salario),
                    "antiguedad_anios": fila.antiguedad_anios
                })
            return empleos
    except Exception as e:
        print("Error al leer empleos:", e)
        return []

def obtener_fechas_nacimiento(cursor):
    cursor.execute("SELECT id, fecha_nacimiento FROM usuarios")
    fechas = {}
    for row in cursor.fetchall():
        usuario_id = row.id
        try:
            fecha_nacimiento = row.fecha_nacimiento
            if isinstance(fecha_nacimiento, str):
                fecha_nacimiento = datetime.strptime(fecha_nacimiento, "%Y-%m-%d").date()
            fechas[usuario_id] = fecha_nacimiento
        except Exception:
            continue
    return fechas

def calcular_edad(fecha_nacimiento):
    hoy = datetime.today().date()
    return hoy.year - fecha_nacimiento.year - (
        (hoy.month, hoy.day) < (fecha_nacimiento.month, fecha_nacimiento.day)
    )

def generar_empleo(usuario_id, edad):
    nombre_empresa = fake.company().replace("'", "''")
    cargo = "Jubilado" if edad > 65 else fake.job().replace("'", "''")
    salario = 0.0 if cargo == "Jubilado" else round(random.uniform(18000, 100000), 2)
    antiguedad = 0 if cargo == "Jubilado" else random.randint(0, 40)
    return (usuario_id, nombre_empresa, cargo, salario, antiguedad)

def insertar_empleos(cursor, fechas_nacimiento):
    empleos = []
    for usuario_id, fecha_nac in fechas_nacimiento.items():
        edad = calcular_edad(fecha_nac)
        empleos.append(generar_empleo(usuario_id, edad))

    if empleos:
        sql = """
        INSERT INTO empleos (
            usuario_id, nombre_empresa, cargo, salario, antiguedad_anios
        ) VALUES (?, ?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, empleos)
        print(f" Insertados {len(empleos)} empleos.")

def main():
    try:
        print("Conectando a Azure SQL...")
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_empleos(cursor)
            conn.commit()

            fechas_nacimiento = obtener_fechas_nacimiento(cursor)
            if not fechas_nacimiento:
                print(" No hay usuarios disponibles en 'usuarios'.")
                return

            insertar_empleos(cursor, fechas_nacimiento)
            conn.commit()
            print(f" Empleos generados para {len(fechas_nacimiento)} usuarios.")
    except Exception as e:
        print(" Error al generar empleos:", e)

if __name__ == "__main__":
    main()
