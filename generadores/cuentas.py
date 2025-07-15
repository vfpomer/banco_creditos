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
Faker.seed(99)

tipos_cuenta = ['corriente', 'ahorro', 'nómina', 'empresa']
cuentas_usadas = set()

def crear_tabla_cuentas(cursor):
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

def cuentas_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('cuentas_bancarias', 'U') IS NULL
    CREATE TABLE cuentas_bancarias (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        tipo_cuenta NVARCHAR(100),
        saldo DECIMAL(18, 2),
        moneda NVARCHAR(50),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """

    tipos_cuenta = ['Ahorro', 'Corriente', 'Inversion']

    inserts = []
    for i in range(cantidad):
        tipo = tipos_cuenta[i % len(tipos_cuenta)]
        saldo = 1000 + i * 250
        moneda = 'EUR'
        insert = f"""
        INSERT INTO cuentas_bancarias (usuario_id, tipo_cuenta, saldo, moneda)
        VALUES ({i+1}, '{tipo}', {saldo}, '{moneda}');
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)


def generar_numero_cuenta():
    while True:
        numero = 'ES' + str(random.randint(10, 99))  # código de control
        numero += ''.join([str(random.randint(0, 9)) for _ in range(20)])
        if numero not in cuentas_usadas:
            cuentas_usadas.add(numero)
            return numero

def generar_cuenta(usuario_id):
    numero_cuenta = generar_numero_cuenta()
    tipo_cuenta = random.choice(tipos_cuenta)
    saldo = round(random.uniform(-1000, 100000), 2)
    return (usuario_id, numero_cuenta, tipo_cuenta, saldo)

def insertar_cuentas(cursor, ids_usuarios, max_cuentas_por_usuario=2):
    cuentas = []
    for usuario_id in ids_usuarios:
        # Al menos 1 cuenta por usuario
        num_cuentas = random.randint(1, max_cuentas_por_usuario)
        for _ in range(num_cuentas):
            cuentas.append(generar_cuenta(usuario_id))

    if cuentas:
        sql = """
        INSERT INTO cuentas_bancarias (usuario_id, numero_cuenta, tipo_cuenta, saldo)
        VALUES (?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, cuentas)

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_cuentas(cursor)
            conn.commit()

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios para asignar cuentas bancarias.")
                return

            insertar_cuentas(cursor, ids_usuarios)
            conn.commit()
            print(f"Cuentas bancarias insertadas para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
