import pyodbc
from faker import Faker
import random
from datetime import datetime

conn_str = (
    "DRIVER={SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)

fake = Faker('es_ES')
Faker.seed(42)

def crear_tabla_empleos(cursor):
    sql = """
    IF NOT EXISTS (
        SELECT * FROM sysobjects WHERE name='empleos' AND xtype='U'
    )
    CREATE TABLE empleos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        nombre_empresa NVARCHAR(255),
        cargo NVARCHAR(255),
        salario FLOAT,
        antiguedad_anios INT,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """
    cursor.execute(sql)


def obtener_fechas_nacimiento(cursor):
    cursor.execute("SELECT id, fecha_nacimiento FROM usuarios")
    fechas = {}
    for row in cursor.fetchall():
        usuario_id = row.id
        fecha_str = str(row.fecha_nacimiento)
        try:
            fecha_nacimiento = datetime.strptime(fecha_str, "%Y-%m-%d").date()
        except ValueError:
            # Si hay error de formato, puedes omitir o manejar como prefieras
            continue
        fechas[usuario_id] = fecha_nacimiento
    return fechas

def calcular_edad(fecha_nacimiento):
    hoy = datetime.today().date()
    return hoy.year - fecha_nacimiento.year - (
        (hoy.month, hoy.day) < (fecha_nacimiento.month, fecha_nacimiento.day)
    )

def generar_empleo(usuario_id, edad):
    nombre_empresa = fake.company().replace("'", "''")
    cargo = "Jubilado" if edad > 65 else fake.job().replace("'", "''")
    salario = 0 if cargo == "Jubilado" else round(random.uniform(18000, 100000), 2)
    antiguedad = 0 if cargo == "Jubilado" else random.randint(0, 40)
    return (usuario_id, nombre_empresa, cargo, salario, antiguedad)

def insertar_empleos(cursor, fechas_nacimiento, max_empleos_por_usuario=2):
    empleos = []
    for usuario_id, fecha in fechas_nacimiento.items():
        edad = calcular_edad(fecha)
        num_empleos = 1 if edad > 65 else random.randint(1, max_empleos_por_usuario)
        for _ in range(num_empleos):
            empleos.append(generar_empleo(usuario_id, edad))
    if empleos:
        sql = """
        INSERT INTO empleos (
            usuario_id, nombre_empresa, cargo, salario, antiguedad_anios
        ) VALUES (?, ?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, empleos)

def empleos_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('empleos', 'U') IS NULL
    CREATE TABLE empleos (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        empresa NVARCHAR(100),
        puesto NVARCHAR(100),
        fecha_inicio DATE,
        fecha_fin DATE NULL,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """

    inserts = []
    for i in range(cantidad):
        empresa = f"Empresa {i}"
        puesto = f"Puesto {i}"
        fecha_inicio = "2015-01-01"
        fecha_fin = "2020-12-31"

        insert = f"""
        INSERT INTO empleos (usuario_id, empresa, puesto, fecha_inicio, fecha_fin)
        VALUES ({i+1}, '{empresa}', '{puesto}', '{fecha_inicio}', '{fecha_fin}');
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)


def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_empleos(cursor)
            conn.commit()

            fechas_nacimiento = obtener_fechas_nacimiento(cursor)
            if not fechas_nacimiento:
                print("No hay usuarios para asignar empleos.")
                return

            insertar_empleos(cursor, fechas_nacimiento)
            conn.commit()
            print(f"Empleos insertados para {len(fechas_nacimiento)} usuarios.")
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
