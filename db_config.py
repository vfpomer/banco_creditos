import psycopg2

# Cambia estos valores por los de tu base real
usar_postgresql = False  # ⚠️ Cambia a True si quieres insertar en base de datos
conexion_config = {
    "host": "localhost",
    "port": 5432,
    "dbname": "tu_basedatos",
    "user": "tu_usuario",
    "password": "tu_contraseña"
}

def insertar_en_db(sql):
    try:
        print("🔌 Conectando a PostgreSQL...")
        conn = psycopg2.connect(**conexion_config)
        cur = conn.cursor()
        cur.execute("BEGIN;")
        cur.execute(sql)
        cur.execute("COMMIT;")
        cur.close()
        conn.close()
        print("🎯 Datos insertados correctamente en la base de datos.")
    except Exception as e:
        print("❌ Error al insertar en la base de datos:", e)
