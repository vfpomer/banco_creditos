import pyodbc
from faker import Faker
import random
from datetime import timedelta
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
Faker.seed(42)

TOTAL_CREDITOS_A_GENERAR = 1  # Cambia este valor si deseas generar más

def crear_tabla_creditos_si_no_existe(cursor):
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
    cursor.execute(sql)

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

def obtener_creditos_existentes(cursor):
    cursor.execute("SELECT usuario_id, tipo FROM creditos")
    data = cursor.fetchall()
    creditos_por_usuario = {}
    for usuario_id, tipo in data:
        creditos_por_usuario.setdefault(usuario_id, set()).add(tipo)
    return creditos_por_usuario

def leer_creditos(conn_str):
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM creditos")
            creditos = cursor.fetchall()
            if creditos is None:
                return []
            return creditos
    except Exception as e:
        print(f"Error leyendo créditos: {e}")
        return []


def insertar_creditos(cursor, ids_usuarios, total_creditos=TOTAL_CREDITOS_A_GENERAR, batch_size=100):
    tipos_credito = ['Personal', 'Hipotecario', 'Automotriz', 'Estudiantil']
    creditos_por_usuario = obtener_creditos_existentes(cursor)

    creditos_a_insertar = []
    creditos_generados = 0
    intentos = 0
    max_intentos = total_creditos * 10

    while creditos_generados < total_creditos and intentos < max_intentos:
        intentos += 1
        usuario_id = random.choice(ids_usuarios)
        tipos_asignados = creditos_por_usuario.get(usuario_id, set())

        tipos_disponibles = [t for t in tipos_credito if t not in tipos_asignados]
        if not tipos_disponibles:
            continue

        tipo = random.choice(tipos_disponibles)
        monto = round(random.uniform(1000, 50000), 2)
        fecha_inicio = fake.date_between(start_date='-5y', end_date='today')
        plazo_meses = random.choice([6, 12, 24, 36, 48])
        fecha_fin = fecha_inicio + timedelta(days=30 * plazo_meses)
        estado = random.choice(['Activo', 'Pagado', 'Moroso'])

        creditos_a_insertar.append((usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo))
        tipos_asignados.add(tipo)
        creditos_por_usuario[usuario_id] = tipos_asignados
        creditos_generados += 1

        if len(creditos_a_insertar) >= batch_size:
            sql = """
            INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo)
            VALUES (?, ?, ?, ?, ?, ?);
            """
            cursor.fast_executemany = True
            cursor.executemany(sql, creditos_a_insertar)
            cursor.connection.commit()
            print(f"[INFO] Insertados {len(creditos_a_insertar)} créditos (total {creditos_generados}).")
            creditos_a_insertar = []

    if creditos_a_insertar:
        sql = """
        INSERT INTO creditos (usuario_id, monto, fecha_inicio, fecha_fin, estado, tipo)
        VALUES (?, ?, ?, ?, ?, ?);
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, creditos_a_insertar)
        cursor.connection.commit()
        print(f"[INFO] Insertados {len(creditos_a_insertar)} créditos finales (total {creditos_generados}).")

    if creditos_generados < total_creditos:
        print(f"[WARN] Solo se generaron {creditos_generados} créditos por limitaciones de tipos por usuario.")

def serializar_fechas(datos):
    import datetime
    resultado = []
    for item in datos:
        nuevo = {}
        for k, v in item.items():
            if isinstance(v, datetime.date):
                nuevo[k] = v.isoformat()
            else:
                nuevo[k] = v
        resultado.append(nuevo)
    return resultado


def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            crear_tabla_creditos_si_no_existe(cursor)
            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios para asignar créditos.")
                return

            insertar_creditos(cursor, ids_usuarios)

            creditos = leer_creditos(conn_str)
            if creditos:
                print("Primer crédito:", creditos[0])
            else:
                print("No hay créditos disponibles para mostrar.")

            print(f"Créditos generados para {len(creditos)} créditos.")
    except Exception as e:
        print("Error al generar créditos:", e)

if __name__ == "__main__":
    main()
