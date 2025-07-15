import pyodbc
from faker import Faker
import random
import string
import os

# Mostrar drivers disponibles
print("Drivers ODBC disponibles:", pyodbc.drivers())

# Configuración de conexión
usar_sql_server = True
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = 'TU_USUARIO'
password = 'TU_PASS'

conn_str = (
    'DRIVER={SQL Server};'
    f'SERVER={server};'
    f'DATABASE={database};'
    f'UID={username};'
    f'PWD={password};'
)

# Faker y configuración
fake = Faker('es_ES')
Faker.seed(0)

estados_civiles = ['Soltero/a', 'Casado/a', 'Divorciado/a', 'Viudo/a']
dni_usados = set()
email_usados = set()

# 1. Función que carga las nacionalidades
def cargar_nacionalidades():
    archivo = "nacionalidades.txt"
    if os.path.exists(archivo):
        with open(archivo, encoding="utf-8") as f:
            contenido = f.read()
            return [n.strip() for n in contenido.split() if n.strip()]
    else:
        return ['Española', 'Argentina', 'Francesa', 'Alemana', 'Italiana']

# 2. Asignación (esto debe ir después de definir la función)
nacionalidades = cargar_nacionalidades()

def generar_dni():
    letras = "TRWAGMYFPDXBNJZSQVHLCKE"
    while True:
        numero = random.randint(10000000, 99999999)
        letra = letras[numero % 23]
        dni = f"{numero}{letra}"
        if dni not in dni_usados:
            dni_usados.add(dni)
            return dni
# generadores/usuarios.py

def usuarios_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        apellido NVARCHAR(100),
        estado_civil NVARCHAR(50),
        dni NVARCHAR(20),
        nacionalidad NVARCHAR(255),
        fecha_nacimiento DATE,
        direccion NVARCHAR(255),
        codigo_postal NVARCHAR(20),
        provincia NVARCHAR(100),
        telefono NVARCHAR(20),
        email NVARCHAR(100),
        es_moroso BIT
    );
    """

    inserts = []
    for _ in range(cantidad):
        # Genera los datos aquí con Faker o similar
        # Por ejemplo (simplificado):
        nombre = "Juan"
        apellido = "Pérez"
        estado_civil = "Soltero/a"
        dni = "12345678Z"
        nacionalidad = "Española"
        fecha_nacimiento = "1980-01-01"
        direccion = "Calle Falsa 123"
        codigo_postal = "28080"
        provincia = "Madrid"
        telefono = "612345678"
        email = f"juan{_}@correo.com"
        es_moroso = 0

        insert = f"""
        INSERT INTO usuarios (
            nombre, apellido, estado_civil, dni, nacionalidad,
            fecha_nacimiento, direccion, codigo_postal, provincia,
            telefono, email, es_moroso
        ) VALUES (
            '{nombre}', '{apellido}', '{estado_civil}', '{dni}', '{nacionalidad}',
            '{fecha_nacimiento}', '{direccion}', '{codigo_postal}', '{provincia}',
            '{telefono}', '{email}', {es_moroso}
        );
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)


def generar_telefono_espanol():
    return random.choice(['6', '7']) + ''.join(random.choices(string.digits, k=8))

def generar_email():
    while True:
        email = fake.unique.email()
        if email not in email_usados:
            email_usados.add(email)
            return email

def escapar_comillas(texto):
    return texto.replace("'", "''")

def generar_usuario():
    nombre = escapar_comillas(fake.first_name())
    apellido = escapar_comillas(fake.last_name())
    estado_civil = escapar_comillas(random.choice(estados_civiles))
    dni = generar_dni()
    nacionalidad = escapar_comillas(random.choice(nacionalidades))
    fecha_nacimiento = fake.date_of_birth(minimum_age=18, maximum_age=80).isoformat()
    direccion = escapar_comillas(fake.address().replace("\n", ", "))
    codigo_postal = fake.postcode()
    provincia = escapar_comillas(fake.state())
    telefono = generar_telefono_espanol()
    email = generar_email()
    es_moroso = random.choice(['1', '0']) # 1 para sí, 0 para no

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

def crear_tabla_si_no_existe():
    sql = """
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100),
        apellido NVARCHAR(100),
        estado_civil NVARCHAR(50),
        dni NVARCHAR(20),
        nacionalidad NVARCHAR(255),
        fecha_nacimiento DATE,
        direccion NVARCHAR(255),
        codigo_postal NVARCHAR(20),
        provincia NVARCHAR(100),
        telefono NVARCHAR(20),
        email NVARCHAR(100),
        es_moroso BIT
    );
    """
    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute(sql)
                conn.commit()
                print("Tabla 'usuarios' verificada/creada.")
    except Exception as e:
        print("ERROR al crear/verificar tabla:", e)

def insertar_en_sql(sql):
    if not usar_sql_server:
        print("ℹ Conexión a SQL Server desactivada")
        return
    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute(sql)
                conn.commit()
    except Exception as e:
        print("ERROR al insertar datos:", e)
        print("SQL problemático:", sql)

def leer_usuarios():
    if not usar_sql_server:
        print("ℹ Conexión a SQL Server desactivada")
        return
    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute("SELECT TOP 10 * FROM usuarios ORDER BY id DESC")
                filas = cursor.fetchall()
                print("\n Últimos 10 registros en tabla 'usuarios':")
                for fila in filas:
                    print(fila)
    except Exception as e:
        print("ERROR al leer datos:", e)

# MAIN
if __name__ == "__main__":
    cantidad = 10
    print(f"\nGenerando e insertando {cantidad} registros...\n")

    crear_tabla_si_no_existe()
    for _ in range(cantidad):
        sql = generar_usuario()
        insertar_en_sql(sql)
    leer_usuarios()
