import pyodbc
from faker import Faker
import random
from dotenv import load_dotenv
import os

load_dotenv()

server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")

conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={server};"
    f"DATABASE={database};"
    f"UID={username};"
    f"PWD={password};"
)

fake = Faker('es_ES')
Faker.seed(99)

tipos_cuenta = ['ahorro', 'nómina', 'empresa']

def crear_tabla_cuentas(cursor):
    print("[INFO] Creando tabla cuentas_bancarias si no existe...")
    sql = """
    IF NOT EXISTS (
        SELECT * FROM sysobjects WHERE name='cuentas_bancarias' AND xtype='U'
    )
    CREATE TABLE cuentas_bancarias (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT NOT NULL,
        numero_cuenta NVARCHAR(24) NOT NULL UNIQUE,
        tipo_cuenta NVARCHAR(20) NOT NULL,
        saldo FLOAT NOT NULL,
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """
    cursor.execute(sql)
    print("[INFO] Tabla creada o ya existe.")

def obtener_ids_usuarios(cursor):
    print("[INFO] Obteniendo IDs de usuarios existentes...")
    cursor.execute("SELECT id FROM usuarios")
    ids = [row[0] for row in cursor.fetchall()]
    print(f"[INFO] Encontrados {len(ids)} usuarios.")
    return ids

def obtener_numeros_cuentas_existentes(cursor):
    cursor.execute("SELECT numero_cuenta FROM cuentas_bancarias")
    return set(row[0] for row in cursor.fetchall())

def generar_numero_cuenta_unico(numeros_existentes, usados_locales):
    while True:
        numero = 'ES' + str(random.randint(10, 99))
        numero += ''.join([str(random.randint(0, 9)) for _ in range(20)])
        if numero not in numeros_existentes and numero not in usados_locales:
            usados_locales.add(numero)
            return numero
        
CANTIDAD_CUENTAS_A_GENERAR = 1
def insertar_cuentas(cursor, ids_usuarios,cantidad):
   
    cantidad = CANTIDAD_CUENTAS_A_GENERAR

    if not ids_usuarios:
        print("[WARN] No hay usuarios para asignar cuentas bancarias.")
        return

    numeros_existentes = obtener_numeros_cuentas_existentes(cursor)
    usados_locales = set()
    cuentas = []

    tipos_por_usuario = {}

    print(f"[INFO] Generando {cantidad} cuentas bancarias para usuarios aleatorios sin repetir tipo por usuario...")

    intentos = 0
    max_intentos = cantidad * 10

    while len(cuentas) < cantidad and intentos < max_intentos:
        intentos += 1

        usuario_id = random.choice(ids_usuarios)
        tipos_asignados = tipos_por_usuario.get(usuario_id, set())

        tipos_disponibles = [t for t in tipos_cuenta if t not in tipos_asignados]

        if not tipos_disponibles:
            continue

        tipo_cuenta = random.choice(tipos_disponibles)
        numero_cuenta = generar_numero_cuenta_unico(numeros_existentes, usados_locales)
        saldo = round(random.uniform(0, 100000), 2)

        cuentas.append((usuario_id, numero_cuenta, tipo_cuenta, saldo))

        tipos_asignados.add(tipo_cuenta)
        tipos_por_usuario[usuario_id] = tipos_asignados

    if len(cuentas) < cantidad:
        print(f"[WARN] Solo se pudieron generar {len(cuentas)} cuentas sin repetir tipo por usuario.")

    if cuentas:
        sql = """
        INSERT INTO cuentas_bancarias (usuario_id, numero_cuenta, tipo_cuenta, saldo)
        VALUES (?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, cuentas)
        print(f"[SUCCESS] Insertadas {len(cuentas)} cuentas bancarias.")

def main():
    try:
        print("[INFO] Conectando a la base de datos...")
        with pyodbc.connect(conn_str, timeout=10) as conn:
            cursor = conn.cursor()

            crear_tabla_cuentas(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            insertar_cuentas(cursor, ids_usuarios, cantidad=10)
            conn.commit()

    except Exception as e:
        print("[ERROR]", e)

if __name__ == "__main__":
    main()
