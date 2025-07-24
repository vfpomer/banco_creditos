import json
import pyodbc
from dotenv import load_dotenv
import os
import datetime

# Importa los módulos que generan y leen datos
from usuarios import generar_usuarios, leer_usuarios
from activos import generar_activo, leer_activos
from monedas import generar_moneda, leer_monedas
from creditos import insertar_creditos, leer_creditos

# Cargar variables de entorno
load_dotenv()

# Parámetros de conexión
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



def convertir_rows_a_dicts(filas, cursor):
    columnas = [col[0] for col in cursor.description]
    resultado = []
    for fila in filas:
        d = {}
        for i, val in enumerate(fila):
            if hasattr(val, 'isoformat'):
                d[columnas[i]] = val.isoformat()
            elif 'Decimal' in str(type(val)):
                d[columnas[i]] = float(val)
            else:
                d[columnas[i]] = val
        resultado.append(d)
    return resultado

def leer_tabla(nombre_tabla):
    try:
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute(f"SELECT * FROM {nombre_tabla}")
            filas = cursor.fetchall()
            if not filas:
                return []
            return convertir_rows_a_dicts(filas, cursor)
    except Exception as e:
        print(f"Error leyendo tabla {nombre_tabla}: {e}")
        return []

# Función para serializar objetos datetime.date y datetime.datetime para JSON
def json_serial(obj):
    if isinstance(obj, (datetime.date, datetime.datetime)):
        return obj.isoformat()
    raise TypeError(f"Tipo no serializable: {type(obj)}")

def main():
    print("Iniciando carga de datos en la base de datos...")

    try:
        # Generar usuarios (ejemplo: 1)
        print("Generando usuarios...")
        generar_usuarios(1, conn_str)

        # Leer usuarios para usar sus IDs
        usuarios = leer_usuarios(conn_str)
        if usuarios is None or len(usuarios) == 0:
            print("No se pudieron leer usuarios. Abortando.")
            return  # o sys.exit(), para parar la ejecución

        # Generar activos para esos usuarios
        print("Generando activos...")
        generar_activo(conn_str)

        # Generar monedas digitales
        print("Generando monedas digitales...")
        generar_moneda(conn_str)

        # Generar créditos para usuarios
        print("Generando créditos...")
        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            # Extraemos sólo los IDs de los usuarios para pasarlos correctamente
            ids_usuarios = [u['id'] for u in usuarios]
            insertar_creditos(cursor, ids_usuarios)
            conn.commit()

        # Leer todo para mostrar resumen
        usuarios_leidos = leer_usuarios(conn_str)
        activos_leidos = leer_activos(conn_str)
        monedas_leidas = leer_monedas()
        #creditos_leidos = leer_creditos(conn_str)

        with pyodbc.connect(conn_str) as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT * FROM creditos")
            creditos_filas = cursor.fetchall()
            creditos_leidos = convertir_rows_a_dicts(creditos_filas, cursor)

        resumen = {
            "usuarios": usuarios_leidos[:3],  # Muestra solo 3 por ejemplo
            "activos": activos_leidos[:3],
            "monedas": monedas_leidas[:3],
            "creditos": creditos_leidos[:3]
        }

        print(json.dumps(resumen, indent=2, ensure_ascii=False, default=json_serial))

        print("\nCarga y lectura de datos finalizada con éxito.")

    except Exception as e:
        print("Error durante la ejecución del proceso:", e)


if __name__ == "__main__":
    main()
