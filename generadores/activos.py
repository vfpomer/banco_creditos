import pyodbc
import random

from dotenv import load_dotenv
import os

# Cargar variables del archivo .env
load_dotenv()

# Parámetros de conexión
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")
    

# Conexión a SQL Server
conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={server};"
    f"DATABASE={database};"
    f"UID={username};"
    f"PWD={password};"
)

# Semilla para reproducibilidad
random.seed(42)

# Tipos de activos y rangos de monto
tipos_activo = {
    'ahorro': (500, 100000),
    'plan de jubilación': (5000, 250000),
    'inversiones': (1000, 300000)
}

# Crear tabla si no existe
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

# Generar un activo para un usuario
def generar_activo(usuario_id):
    tipo = random.choice(list(tipos_activo.keys()))
    min_val, max_val = tipos_activo[tipo]
    monto = round(random.uniform(min_val, max_val), 2)
    descripcion = "Activos financieros"
    return (usuario_id, tipo, descripcion, monto)

# Obtener los IDs de todos los usuarios
def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

# Insertar activos para cada usuario
def insertar_activos(cursor, ids_usuarios, max_activos_por_usuario=3):
    activos = []
    for usuario_id in ids_usuarios:
        num_activos = random.randint(0, max_activos_por_usuario)
        for _ in range(num_activos):
            activos.append(generar_activo(usuario_id))
    
    if activos:
        sql = """
        INSERT INTO activos_financieros (
            usuario_id, tipo_activo, descripcion, monto
        ) VALUES (?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, activos)
        print(f"Insertados {len(activos)} activos.")

#n8n
def leer_activos():
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
                    "descripcion": fila.descripcion,
                    "monto": float(fila.monto),
                })
            return activos
    except Exception as e:
        print("Error al leer activos:", e)
        return []


# Función opcional que devuelve SQL para pruebas
def activos_insert(cantidad: int) -> str:
    sql = """
    IF OBJECT_ID('activos_financieros', 'U') IS NULL
    CREATE TABLE activos_financieros (
        id INT IDENTITY(1,1) PRIMARY KEY,
        usuario_id INT,
        tipo_activo NVARCHAR(100),
        descripcion NVARCHAR(255),
        monto DECIMAL(18,2),
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
    );
    """

    tipos = list(tipos_activo.keys())

    inserts = []
    for i in range(cantidad):
        tipo = tipos[i % len(tipos)]
        descripcion = 'Activos financieros'
        monto = 1000 + i * 500
        insert = f"""
        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES ({i+1}, '{tipo}', '{descripcion}', {monto});
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)

# MAIN
def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_activos_si_no_existe(cursor)

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print(" No hay usuarios para asignar activos.")
                return

            insertar_activos(cursor, ids_usuarios)
            conn.commit()
            print(f"Activos generados para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print(" Error al generar activos:", e)

if __name__ == "__main__":
    main()
