import pyodbc
from faker import Faker
import random
import json

from dotenv import load_dotenv
import os

#cargar las variables desde el archivo .env
load_dotenv()

usar_sql_server = True

# Parámetros de conexión
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")




fake = Faker('es_ES')
estados_civiles = ['Soltero/a', 'Casado/a', 'Divorciado/a', 'Viudo/a']
dni_usados = set()
email_usados = set()

def crear_tabla_si_no_existe(conn_str):
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
    return random.choice(['6', '7']) + ''.join(random.choices('0123456789', k=8))

def generar_email():
    while True:
        email = fake.unique.email()
        if email not in email_usados:
            email_usados.add(email)
            return email

def generar_usuarios(cantidad, conn_str):
    nacionalidades = ['Española', 'Argentina', 'Francesa', 'Alemana', 'Italiana']

    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            usuarios = []
            for _ in range(cantidad):
                nombre = fake.first_name()
                apellido = fake.last_name()
                estado_civil = random.choice(estados_civiles)
                dni = generar_dni()
                nacionalidad = random.choice(nacionalidades)
                fecha_nac = fake.date_of_birth(minimum_age=18, maximum_age=80).isoformat()
                direccion = fake.address().replace("\n", ", ")
                codigo_postal = fake.postcode()
                provincia = fake.state()
                telefono = generar_telefono()
                email = generar_email()
                es_moroso = random.choice([0, 1])

                usuarios.append((
                    nombre,
                    apellido,
                    estado_civil,
                    dni,
                    nacionalidad,
                    fecha_nac,
                    direccion,
                    codigo_postal,
                    provincia,
                    telefono,
                    email,
                    es_moroso
                ))

            sql = """
            INSERT INTO usuarios (
                nombre, apellido, estado_civil, dni, nacionalidad,
                fecha_nacimiento, direccion, codigo_postal, provincia,
                telefono, email, es_moroso
            ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            """

            cursor.fast_executemany = True
            cursor.executemany(sql, usuarios)
            conn.commit()

            print(f"{cantidad} usuarios insertados correctamente.")

    except Exception as e:
        print("ERROR al insertar usuarios:", e)

def leer_usuarios(conn_str):
    try:
        print("[INFO] Leyendo usuarios desde la base de datos...")
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM usuarios")
            filas = cursor.fetchall()
            usuarios = []
            for fila in filas:
                usuarios.append({
                    "id": fila.id,
                    "nombre": fila.nombre,
                    "apellido": fila.apellido,
                    "estado_civil": fila.estado_civil,
                    "dni": fila.dni,
                    "nacionalidad": fila.nacionalidad,
                    "direccion": fila.direccion,
                    "codigo_postal": fila.codigo_postal,
                    "provincia": fila.provincia,
                    "telefono": fila.telefono,
                    "es_moroso": bool(fila.es_moroso),
                    "fecha_nacimiento": fila.fecha_nacimiento.isoformat() if fila.fecha_nacimiento else None,
                    "email": fila.email if fila.email else None
                })

            print(f"[INFO] Leídos {len(usuarios)} usuarios.")
            return usuarios
    except Exception as e:
        print("[ERROR] No se pudieron leer los usuarios:", e)
        return []

if __name__ == "__main__":
    # Puedes probar este módulo así:
    conn_str = (
       # Cadena de conexión segura

        f"DRIVER={{ODBC Driver 17 for SQL Server}};"
        f"SERVER={server};"
        f"DATABASE={database};"
        f"UID={username};"
        f"PWD={password};"
    )
    print("Creando tabla si no existe y generando usuarios...")
    crear_tabla_si_no_existe(test_conn_str)
    generar_usuarios(10, test_conn_str)
    print(json.dumps(leer_usuarios(test_conn_str), indent=2, ensure_ascii=False))
