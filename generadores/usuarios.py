import pyodbc
from faker import Faker
import random
import string
import os

# Mostrar drivers disponibles (puede comentarse si no se requiere)
# print("Drivers ODBC disponibles:", pyodbc.drivers())

# Configuración de conexión
usar_sql_server = True
conn_str = (
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)

# Faker
fake = Faker('es_ES')
Faker.seed(0)

# Datos auxiliares
estados_civiles = ['Soltero/a', 'Casado/a', 'Divorciado/a', 'Viudo/a']
dni_usados = set()
email_usados = set()

def crear_tabla_usuarios(cursor):
    sql = """
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        apellido NVARCHAR(100),
        email NVARCHAR(255),
        fecha_nacimiento DATE
    );
    """
    cursor.execute(sql)
    
# Función para cargar nacionalidades desde archivo
def cargar_nacionalidades():
    archivo = "nacionalidades.txt"
    if os.path.exists(archivo):
        with open(archivo, encoding="utf-8") as f:
            return [n.strip() for n in f if n.strip()]
    return ['Española', 'Argentina', 'Francesa', 'Alemana', 'Italiana']

nacionalidades = cargar_nacionalidades()

# Generadores auxiliares
def generar_dni():
    letras = "TRWAGMYFPDXBNJZSQVHLCKE"
    while True:
        numero = random.randint(10000000, 99999999)
        letra = letras[numero % 23]
        dni = f"{numero}{letra}"
        if dni not in dni_usados:
            dni_usados.add(dni)
            return dni

def generar_telefono():
    return random.choice(['6', '7']) + ''.join(random.choices(string.digits, k=8))

def generar_email():
    while True:
        email = fake.unique.email()
        if email not in email_usados:
            email_usados.add(email)
            return email

def escapar_comillas(texto):
    return texto.replace("'", "''")

# Generador de SQL INSERT para un usuario
def generar_usuario_sql():
    nombre = escapar_comillas(fake.first_name())
    apellido = escapar_comillas(fake.last_name())
    estado_civil = escapar_comillas(random.choice(estados_civiles))
    dni = generar_dni()
    nacionalidad = escapar_comillas(random.choice(nacionalidades))
    fecha_nacimiento = fake.date_of_birth(minimum_age=18, maximum_age=80).isoformat()
    direccion = escapar_comillas(fake.address().replace("\n", ", "))
    codigo_postal = fake.postcode()
    provincia = escapar_comillas(fake.state())
    telefono = generar_telefono()
    email = generar_email()
    es_moroso = random.choice([0, 1])

    sql = f"""INSERT INTO usuarios (
        nombre, apellido, estado_civil, dni, nacionalidad,
        fecha_nacimiento, direccion, codigo_postal, provincia,
        telefono, email, es_moroso
    ) VALUES (
        '{nombre}', '{apellido}', '{estado_civil}', '{dni}', '{nacionalidad}',
        '{fecha_nacimiento}', '{direccion}', '{codigo_postal}', '{provincia}',
        '{telefono}', '{email}', {es_moroso}
    );"""
    return sql

# Crea la tabla si no existe
def crear_tabla_si_no_existe():
    sql = """
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        apellido NVARCHAR(100),
        estado_civil NVARCHAR(50),
        dni NVARCHAR(20) UNIQUE,
        nacionalidad NVARCHAR(255),
        fecha_nacimiento DATE,
        direccion NVARCHAR(255),
        codigo_postal NVARCHAR(20),
        provincia NVARCHAR(100),
        telefono NVARCHAR(20),
        email NVARCHAR(100) UNIQUE,
        es_moroso BIT
    );
    """
    try:
        with pyodbc.connect(conn_str) as conn:
            conn.execute(sql)
            conn.commit()
            print("Tabla 'usuarios' verificada/creada.")
    except Exception as e:
        print("ERROR al crear/verificar tabla:", e)

# Inserta un único SQL
def insertar_en_sql(sql):
    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute(sql)
                conn.commit()
    except Exception as e:
        print("ERROR al insertar datos:", e)
        print(" SQL problemático:\n", sql)

# Muestra los últimos registros
def leer_usuarios():
    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute("SELECT TOP 10 * FROM usuarios ORDER BY id DESC")
                filas = cursor.fetchall()
                print("\nÚltimos 10 registros en 'usuarios':")
                for fila in filas:
                    print(fila)
    except Exception as e:
        print("ERROR al leer datos:", e)

def generar_usuarios(cantidad: int):
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            crear_tabla_usuarios(cursor)

            usuarios = []
            for _ in range(cantidad):
                nombre = fake.first_name()
                apellido = fake.last_name()
                email = fake.email()
                fecha_nac = fake.date_of_birth(minimum_age=18, maximum_age=90)
                usuarios.append((nombre, apellido, email, fecha_nac))

            sql = """
            INSERT INTO usuarios (nombre, apellido, email, fecha_nacimiento)
            VALUES (?, ?, ?, ?)
            """
            cursor.fast_executemany = True
            cursor.executemany(sql, usuarios)
            conn.commit()

            print(f" {cantidad} usuarios insertados correctamente.")
    except Exception as e:
        print("Error al insertar usuarios:", e)

# MAIN
if __name__ == "__main__":
    cantidad = 10
    print(f"\nGenerando e insertando {cantidad} usuarios...\n")

    crear_tabla_si_no_existe()

    for _ in range(cantidad):
        sql = generar_usuario_sql()
        insertar_en_sql(sql)

    leer_usuarios()
