import pyodbc
from faker import Faker
import random

conn_str = (
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)

fake = Faker('es_ES')
Faker.seed(99)

tipos_cuenta = ['corriente', 'ahorro', 'nómina', 'empresa']

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

def insertar_cuentas(cursor, ids_usuarios, max_cuentas_por_usuario=2):
    cuentas = []
    print("[INFO] Obteniendo números de cuentas existentes...")
    numeros_existentes = obtener_numeros_cuentas_existentes(cursor)
    usados_locales = set()

    print("[INFO] Generando cuentas para usuarios...")
    for usuario_id in ids_usuarios:
        num_cuentas = random.randint(1, max_cuentas_por_usuario)
        for _ in range(num_cuentas):
            numero_cuenta = generar_numero_cuenta_unico(numeros_existentes, usados_locales)
            tipo_cuenta = random.choice(tipos_cuenta)
            saldo = round(random.uniform(0, 100000), 2)
            cuentas.append((usuario_id, numero_cuenta, tipo_cuenta, saldo))

    if cuentas:
        sql = """
        INSERT INTO cuentas_bancarias (usuario_id, numero_cuenta, tipo_cuenta, saldo)
        VALUES (?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, cuentas)
    print(f"[INFO] Insertadas {len(cuentas)} cuentas bancarias.")

#n8n
def leer_cuentas():
    try:
        print("[INFO] Leyendo cuentas bancarias desde la base de datos...")
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM cuentas_bancarias")
            filas = cursor.fetchall()
            cuentas = []
            for fila in filas:
                cuentas.append({
                    "id": fila.id,
                    "usuario_id": fila.usuario_id,
                    "numero_cuenta": fila.numero_cuenta,
                    "tipo_cuenta": fila.tipo_cuenta,
                    "saldo": float(fila.saldo)
                })
            print(f"[INFO] Leídas {len(cuentas)} cuentas.")
            return cuentas
    except Exception as e:
        print("[ERROR] No se pudieron leer las cuentas bancarias:", e)
        return []


def main():
    try:
        print("[INFO] Conectando a la base de datos...")
        with pyodbc.connect(conn_str, timeout=10) as conn:
            cursor = conn.cursor()

            crear_tabla_cuentas(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("[WARN] No hay usuarios para asignar cuentas bancarias.")
                return

            insertar_cuentas(cursor, ids_usuarios)
            conn.commit()

            print(f"[SUCCESS] Cuentas bancarias insertadas para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print("[ERROR]", e)

if __name__ == "__main__":
    main()
