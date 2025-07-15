import pyodbc
from faker import Faker
import random
from datetime import date

conn_str = (
    "DRIVER={SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=TU_USUARIO;"
    "PWD=TU_PASS;"
)

fake = Faker('es_ES')
Faker.seed(123)

tipos_credito = ['hipoteca', 'personal', 'vehiculo']

def obtener_ids_usuarios(cursor):
    cursor.execute("SELECT id FROM usuarios")
    return [row[0] for row in cursor.fetchall()]

def insertar_creditos(cursor, ids_usuarios, max_creditos_por_usuario=2):
    creditos = []
    for usuario_id in ids_usuarios:
        num_creditos = random.randint(0, max_creditos_por_usuario)
        for _ in range(num_creditos):
            creditos.append(generar_credito(usuario_id))
    
    if creditos:
        sql = """
        INSERT INTO creditos (
            usuario_id, tipo_credito, cantidad_solicitada, fecha_solicitud, activo
        ) VALUES (?, ?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, creditos)

def insertar_creditos(cursor, ids_usuarios, max_creditos_por_usuario=2):
    creditos = []
    for usuario_id in ids_usuarios:
        # Al menos 1 crédito, máximo max_creditos_por_usuario
        num_creditos = random.randint(1, max_creditos_por_usuario)
        for _ in range(num_creditos):
            creditos.append(generar_credito(usuario_id))
    
    if creditos:
        sql = """
        INSERT INTO creditos (
            usuario_id, tipo_credito, cantidad_solicitada, fecha_solicitud, activo
        ) VALUES (?, ?, ?, ?, ?)
        """
        cursor.fast_executemany = True
        cursor.executemany(sql, creditos)

def main():
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            
            ids_usuarios = obtener_ids_usuarios(cursor)
            if not ids_usuarios:
                print("No hay usuarios en la base de datos para asignar créditos.")
                return
            
            insertar_creditos(cursor, ids_usuarios)
            conn.commit()
            print(f"Créditos insertados para {len(ids_usuarios)} usuarios existentes.")
    except Exception as e:
        print("Error:", e)

if __name__ == "__main__":
    main()
