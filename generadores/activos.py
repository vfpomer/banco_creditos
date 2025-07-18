import pyodbc
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

random.seed(42)

tipos_activo = {
    'ahorro': (500, 100000),
    'plan de jubilación': (5000, 250000),
    'inversiones': (1000, 300000)
}

def crear_tabla_activos_si_no_existe(cursor):
    sql = """
    IF OBJECT_ID('activos_financieros', 'U') IS NULL
    BEGIN
        CREATE TABLE activos_financieros (
            id INT IDENTITY(1,1) PRIMARY KEY,
            usuario_id INT NOT NULL,
            tipo_activo NVARCHAR(100),
            descripcion NVARCHAR(255),
            monto DECIMAL(18,2),
            FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
        );
    END
    """
    cursor.execute(sql)

def leer_activos(conn_str):
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM activos_financieros")
            filas = cursor.fetchall()
            activos = []
            for fila in filas:
                activos.append({
                    "id": fila.id,
                    "usuario_id": fila.usuario_id,
                    "tipo_activo": fila.tipo_activo,
                    "monto": float(fila.monto),
              
                })
            return activos
    except Exception as e:
        print("Error al leer activos:", e)
        return []

def generar_activo(usuario_id):
    tipo = random.choice(list(tipos_activo.keys()))
    min_val, max_val = tipos_activo[tipo]
    monto = round(random.uniform(min_val, max_val), 2)
    descripcion = "Activos financieros"
    return (usuario_id, tipo, descripcion, monto)

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

def insertar_activos(cursor, ids_usuarios, cantidad=1):
    if not ids_usuarios:
        print("No hay usuarios para asignar activos.")
        return
    
    activos = []
    for _ in range(cantidad):
        usuario_id = random.choice(ids_usuarios)  # Escoge usuario al azar
        activos.append(generar_activo(usuario_id))
    
    sql = """
    INSERT INTO activos_financieros (
        usuario_id, tipo_activo, descripcion, monto
    ) VALUES (?, ?, ?, ?)
    """
    cursor.fast_executemany = True
    cursor.executemany(sql, activos)
    print(f"Insertados {len(activos)} activos financieros.")

def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            crear_tabla_activos_si_no_existe(cursor)
            ids_usuarios = obtener_ids_usuarios(cursor)
            insertar_activos(cursor, ids_usuarios, cantidad=1)
            conn.commit()
            print("Activos generados exitosamente.")
    except Exception as e:
        print("Error al generar activos:", e)

if __name__ == "__main__":
    main()
