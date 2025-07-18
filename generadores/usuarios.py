import pyodbc
from faker import Faker
import random
import json
from datetime import datetime, timedelta
from dotenv import load_dotenv
import os

# Cargar las variables desde el archivo .env
load_dotenv()

usar_sql_server = True

# Parámetros de conexión
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")

fake = Faker('es_ES')
estados_civiles = ['Soltero', 'Soltera', 'Casado', 'Casada', 'Divorciado', 'Divorciada', 'Viudo', 'Viuda']

# Sets para controlar unicidad
dni_usados = set()
email_usados = set()
cuentas_usadas = set()

def crear_tabla_si_no_existe(conn_str):
    sql = """
    IF OBJECT_ID('usuarios', 'U') IS NULL
    CREATE TABLE usuarios (
        id INT IDENTITY(1,1) PRIMARY KEY,
        nombre NVARCHAR(100) NOT NULL,
        apellido NVARCHAR(100) NOT NULL,
        estado_civil NVARCHAR(50),
        dni NVARCHAR(20) NOT NULL UNIQUE,
        nacionalidad NVARCHAR(255),
        fecha_nacimiento DATE,
        direccion NVARCHAR(255),
        codigo_postal NVARCHAR(20),
        provincia NVARCHAR(100),
        telefono NVARCHAR(20) NOT NULL UNIQUE,
        email NVARCHAR(100) NOT NULL UNIQUE,
        es_moroso BIT,
        profesion NVARCHAR(100),
        salario FLOAT,
        numero_cuenta NVARCHAR(24) NOT NULL UNIQUE,
        tipo_cuenta NVARCHAR(20) NOT NULL,
        saldo FLOAT NOT NULL,
        antiguedad_cliente DATE,
        genero NVARCHAR(20)
    );
    """
    try:
        with pyodbc.connect(conn_str) as conn:
            conn.execute(sql)
            conn.commit()
            print("Tabla 'usuarios' verificada/creada.")
    except Exception as e:
        print("ERROR al crear/verificar tabla:", e)

def inicializar_sets_desde_bd(conn_str):
    global dni_usados, email_usados, cuentas_usadas
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            cursor.execute("SELECT dni FROM usuarios")
            dni_usados = set(row[0] for row in cursor.fetchall())

            cursor.execute("SELECT email FROM usuarios")
            email_usados = set(row[0] for row in cursor.fetchall())

            cursor.execute("SELECT numero_cuenta FROM usuarios")
            cuentas_usadas = set(row[0] for row in cursor.fetchall())

        print(f"Sets inicializados: {len(dni_usados)} DNIs, {len(email_usados)} emails, {len(cuentas_usadas)} cuentas.")
    except Exception as e:
        print("Error al inicializar sets desde BD:", e)

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

def generar_numero_cuenta_unico():
    while True:
        numero = 'ES' + ''.join(random.choices('0123456789', k=22))  # Formato IBAN ficticio
        if numero not in cuentas_usadas:
            cuentas_usadas.add(numero)
            return numero

def usuario_existe(cursor, email, telefono):
    cursor.execute("SELECT 1 FROM usuarios WHERE email = ? OR telefono = ?", (email, telefono))
    return cursor.fetchone() is not None

def generar_fecha_antiguedad():
    inicio = datetime(2018, 1, 1)
    fin = datetime.now()
    dias_rango = (fin - inicio).days
    fecha = inicio + timedelta(days=random.randint(0, dias_rango))
    return fecha.date()

def cargar_nacionalidades(ruta='nacionalidades.txt'):
    with open(ruta, 'r', encoding='utf-8') as f:
        nacionalidades = [linea.strip() for linea in f if linea.strip()]
    return nacionalidades

def cargar_cuentas_usadas(conn):
    cuentas = set()
    cursor = conn.cursor()
    cursor.execute("SELECT numero_cuenta FROM usuarios")
    for row in cursor.fetchall():
        cuentas.add(row[0])
    return cuentas

def cargar_dnis_usados(conn):
    dnis = set()
    cursor = conn.cursor()
    cursor.execute("SELECT dni FROM usuarios")
    for row in cursor.fetchall():
        dnis.add(row[0])
    return dnis

def generar_usuarios(cantidad, conn_str, ruta_nacionalidades='nacionalidades.txt'):
    nacionalidades = cargar_nacionalidades(ruta_nacionalidades)

    estados_civiles_masc = ['Soltero', 'Casado', 'Divorciado', 'Viudo']
    estados_civiles_fem = ['Soltera', 'Casada', 'Divorciada', 'Viuda']

    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            cuentas_usadas = cargar_cuentas_usadas(conn)
            dnis_usados = cargar_dnis_usados(conn)

            usuarios_procesados = 0
            batch_size = 100

            for i in range(cantidad):
                print(f"Generando usuario {i+1}/{cantidad}...")  # Seguimiento de progreso

                genero = random.choice(['Masculino', 'Femenino'])
                estado_civil = random.choice(estados_civiles_masc) if genero == 'Masculino' else random.choice(estados_civiles_fem)
                nombre = fake.first_name_male() if genero == 'Masculino' else fake.first_name_female()
                apellido = fake.last_name()

                # Generar DNI único con máximo 3 intentos
                max_intentos_dni = 3
                dni = None
                for _ in range(max_intentos_dni):
                    dni_gen = generar_dni()
                    if dni_gen not in dnis_usados:
                        dni = dni_gen
                        dnis_usados.add(dni)
                        break
                if dni is None:
                    print("No se pudo generar DNI único, se omite usuario.")
                    continue

                nacionalidad = random.choice(nacionalidades)
                fecha_nac = fake.date_of_birth(minimum_age=18, maximum_age=80).isoformat()
                direccion = fake.address().replace("\n", ", ")
                codigo_postal = fake.postcode()
                provincia = fake.state()
                telefono = generar_telefono()
                email = generar_email()
                es_moroso = random.choice([0, 1])
                profesion = fake.job()
                salario = round(random.uniform(1200, 8000), 2)
                tipo_cuenta = "corriente"
                saldo = round(random.uniform(0, 100000), 2)
                antiguedad_cliente = generar_fecha_antiguedad()

                # Generar numero_cuenta único con máximo 3 intentos
                max_intentos_cuenta = 3
                numero_cuenta = None
                for _ in range(max_intentos_cuenta):
                    cuenta_generada = generar_numero_cuenta_unico()
                    if cuenta_generada not in cuentas_usadas:
                        numero_cuenta = cuenta_generada
                        cuentas_usadas.add(numero_cuenta)
                        break
                if numero_cuenta is None:
                    print("No se pudo generar número de cuenta único, se omite usuario.")
                    continue

                sql = """
                INSERT INTO usuarios (
                    nombre, apellido, estado_civil, dni, nacionalidad,
                    fecha_nacimiento, direccion, codigo_postal, provincia,
                    telefono, email, es_moroso, profesion, salario, numero_cuenta, 
                    tipo_cuenta, saldo, antiguedad_cliente, genero
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                """

                usuario = (
                    nombre, apellido, estado_civil, dni, nacionalidad,
                    fecha_nac, direccion, codigo_postal, provincia,
                    telefono, email, es_moroso, profesion, salario,
                    numero_cuenta, tipo_cuenta, saldo, antiguedad_cliente, genero
                )

                # Evitar insertar si email o teléfono ya existen
                if usuario_existe(cursor, email, telefono):
                    print(f"[WARN] Usuario con email '{email}' o teléfono '{telefono}' ya existe, saltando inserción.")
                    continue

                try:
                    cursor.execute(sql, usuario)
                    usuarios_procesados += 1
                    # Commit cada 100 inserciones para optimizar
                    if usuarios_procesados % batch_size == 0:
                        conn.commit()
                        print(f"{usuarios_procesados} usuarios insertados y commit realizado.")
                except pyodbc.IntegrityError as e:
                    if 'UQ__usuarios__C6B74B886EA5B9B5' in str(e):
                        print(f"Error de duplicado en número de cuenta para {numero_cuenta}, se omite usuario.")
                    elif 'UQ__usuarios__DNI' in str(e):
                        print(f"Error de duplicado en DNI para {dni}, se omite usuario.")
                    else:
                        print(f"Error insertando usuario: {e}")
                except Exception as e:
                    print(f"Error insertando usuario: {e}")

            # Commit final al terminar
            conn.commit()
            print(f"Proceso terminado. {usuarios_procesados} usuarios insertados de {cantidad} intentados.")

    except Exception as e:
        print("ERROR al insertar usuarios:", e)


def leer_usuarios(conn_str):
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM usuarios")
            filas = cursor.fetchall()
            if not filas:
                print("[WARN] No hay usuarios en la tabla.")
                return []
            # Convertir filas a lista de dicts para más comodidad
            columnas = [column[0] for column in cursor.description]
            usuarios = [dict(zip(columnas, fila)) for fila in filas]
            return usuarios
    except Exception as e:
        print(f"No se pudieron leer usuarios: {e}")
        return None



if __name__ == "__main__":
    if usar_sql_server:
        conn_str = f"DRIVER={{ODBC Driver 17 for SQL Server}};SERVER={server};DATABASE={database};UID={username};PWD={password};TrustServerCertificate=yes;"
    else:
        print("Actualmente sólo está implementado para SQL Server.")
        exit()

    crear_tabla_si_no_existe(conn_str)
    inicializar_sets_desde_bd(conn_str)
    generar_usuarios(1, conn_str)
    leer_usuarios(conn_str)
