import pyodbc

usar_sql_server = True

# Reemplaza estos valores con los reales
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = 'vanesa'  # ⚠️ Este te lo da Azure al crear el servidor
password = 'Vane7891@'  # ⚠️ La que definiste al crear el servidor

# Cadena de conexión
conn_str = (
    'DRIVER={ODBC Driver 17 for SQL Server};'
    f'SERVER={server};'
    f'DATABASE={database};'
    f'UID={username};'
    f'PWD={password};'
)

def insertar_en_sql(sql):
    if not usar_sql_server:
        print("ℹ️ Conexión a SQL Server desactivada")
        return
    try:
        print("🔌 Conectando a Azure SQL...")
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                cursor.execute(sql)
                conn.commit()
                print("✅ Datos insertados correctamente.")
    except Exception as e:
        print("❌ Error al insertar datos:", e)
