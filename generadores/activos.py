import pyodbc
import random

conn_str = (
    "DRIVER={SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
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

def generar_activo(usuario_id):
    tipo = random.choice(list(tipos_activo.keys()))
    min_val, max_val = tipos_activo[tipo]
    monto = round(random.uniform(min_val, max_val), 2)
    descripcion = "Activos financieros"
    return (usuario_id, tipo, descripcion, monto)

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()] 

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

    tipos_activo = ['ahorro', 'plan de jubilación', 'inversiones']

    inserts = []
    for i in range(cantidad):
        tipo = tipos_activo[i % len(tipos_activo)]
        descripcion = 'Activos financieros'
        monto = 1000 + i * 500
        insert = f"""
        INSERT INTO activos_financieros (usuario_id, tipo_activo, descripcion, monto)
        VALUES ({i+1}, '{tipo}', '{descripcion}', {monto});
        """
        inserts.append(insert)

    return sql + "\n" + "\n".join(inserts)


def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()

            crear_tabla_activos_si_no_existe(cursor)

            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios para asignar activos.")
                return

            insertar_activos(cursor, ids_usuarios)
            conn.commit()
            print(f"Activos insertados para {len(ids_usuarios)} usuarios.")
    except Exception as e:
        print("Error al generar activos:", e)

if __name__ == "__main__":
    main()
