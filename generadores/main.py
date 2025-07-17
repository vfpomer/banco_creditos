import json
from usuarios import generar_usuarios, leer_usuarios
from empleos import main as main_empleos, leer_empleos
from activos import main as main_activos, leer_activos
from monedas import main as main_monedas, leer_monedas
from creditos import main as main_creditos, leer_creditos
from datetime import datetime, timedelta
import pyodbc

from dotenv import load_dotenv
import os

# Cargar variables del archivo .env
load_dotenv()

# Parámetros de conexión
server = 'upgradeserver-vf.database.windows.net'
database = 'Banco'
username = os.getenv("USUARIO_DB")
password = os.getenv("CLAVE_BD")

# Cadena de conexión segura
test_conn_str = (
    f"DRIVER={{ODBC Driver 17 for SQL Server}};"
    f"SERVER={server};"
    f"DATABASE={database};"
    f"UID={username};"
    f"PWD={password};"
)

def main():
    print("Iniciando carga de datos en la base de datos...")

    try:
        # Paso 1: Insertar 100 usuarios
        print("Insertando 100 usuarios...")
        generar_usuarios(100, conn_str)  # Debe aceptar conn_str y usar pyodbc internamente

        print("Leyendo usuarios...")
        usuarios = leer_usuarios(conn_str)

        # Paso 2: Empleos
        print("Insertando empleos...")
        main_empleos()
        empleos = leer_empleos()

        # Paso 3: Activos
        print("Insertando activos...")
        main_activos()
        activos = leer_activos()

        # Paso 4: Monedas
        print("Insertando monedas digitales...")
        main_monedas()
        monedas = leer_monedas()

        # Paso 5: Créditos
        print("Insertando créditos...")
        main_creditos()
        creditos = leer_creditos()

        # Paso 6: Marcar morosos
        print("Marcando usuarios morosos...")
        marcar_morosos(conn_str)

        # Imprimir todos los datos en formato JSON
        print(json.dumps({
            "usuarios": usuarios[:10],  # solo primeros 10
            "empleos": empleos[:10],
            "activos": activos[:10],
            "monedas": monedas[:10],
            "creditos": creditos[:10]
        }, indent=2, ensure_ascii=False))

        print("\nTodos los datos fueron insertados correctamente.")
    except Exception as e:
        print("Error durante la ejecución del proceso:", e)


def marcar_morosos(conn_str):
    hoy = datetime.now()
    dias_limite = hoy - timedelta(days=30)
    fecha_limite_str = dias_limite.strftime('%Y-%m-%d')

    try:
        with pyodbc.connect(conn_str) as conn:
            with conn.cursor() as cursor:
                # Marcar morosos
                cursor.execute("""
                    UPDATE usuarios
                    SET es_moroso = 1
                    WHERE id IN (
                        SELECT u.id
                        FROM usuarios u
                        JOIN creditos c ON u.id = c.usuario_id
                        WHERE c.fecha_fin < ? AND c.estado = 'pendiente'
                    )
                """, (fecha_limite_str,))

                # Desmarcar no morosos
                cursor.execute("""
                    UPDATE usuarios
                    SET es_moroso = 0
                    WHERE id NOT IN (
                        SELECT u.id
                        FROM usuarios u
                        JOIN creditos c ON u.id = c.usuario_id
                        WHERE c.fecha_fin < ? AND c.estado = 'pendiente'
                    )
                """, (fecha_limite_str,))

                conn.commit()
                print("Usuarios morosos actualizados correctamente.")
    except Exception as e:
        print(" Error al actualizar morosos:", e)


if __name__ == "__main__":
    main()
