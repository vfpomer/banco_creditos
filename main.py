import os
from db_config import insertar_en_sql, usar_sql_server

# Importar generadores
from generadores.usuarios import usuarios_insert
from generadores.empleos import empleos_insert
from generadores.creditos import creditos_insert
from generadores.cuentas import cuentas_insert
from generadores.activos import activos_insert
from generadores.monedas import monedas_insert

import pyodbc

conn_str = (
    "DRIVER={SQL Server};"
    "SERVER=upgradeserver-vf.database.windows.net;"
    "DATABASE=Banco;"
    "UID=vanesa;"
    "PWD=Vane7891@;"
)


try:
    with pyodbc.connect(conn_str, timeout=5) as conn:
        cursor = conn.cursor()
        cursor.execute("SELECT TOP 1 * FROM usuarios")
        row = cursor.fetchone()
        print("Conexión exitosa, primer usuario:", row)
except Exception as e:
    print("Error conectando a la base de datos:", e)


RUTA_SALIDA = "salida_sql"
NUM_REGISTROS = 100  # Cantidad de registros para todas las tablas

def safe_print(texto):
    try:
        print(texto)
    except UnicodeEncodeError:
        # Imprime el texto sin caracteres no soportados
        print(texto.encode('ascii', errors='ignore').decode('ascii'))

def limpiar_ascii(texto):
    return texto.encode('ascii', errors='ignore').decode('ascii')

def guardar(nombre_archivo, contenido_sql):
    os.makedirs(RUTA_SALIDA, exist_ok=True)
    ruta = os.path.join(RUTA_SALIDA, nombre_archivo)
    with open(ruta, "w", encoding="utf-8") as f:
        f.write(contenido_sql)
    safe_print(f"Guardado: {ruta}")

def combinar_sqls(sqls):
    return "\n\n".join(sqls)

if __name__ == "__main__":
    safe_print("Generando datos para todas las tablas...")

    usuarios_sql  = usuarios_insert(NUM_REGISTROS)
    empleos_sql   = empleos_insert(NUM_REGISTROS)
    creditos_sql  = creditos_insert(NUM_REGISTROS)
    cuentas_sql   = cuentas_insert(NUM_REGISTROS)
    activos_sql   = activos_insert(NUM_REGISTROS)
    monedas_sql   = monedas_insert(NUM_REGISTROS)

    # Guardar SQLs individuales
    guardar("usuarios.sql", usuarios_sql)
    guardar("empleos.sql", empleos_sql)
    guardar("creditos.sql", creditos_sql)
    guardar("cuentas_bancarias.sql", cuentas_sql)
    guardar("activos_financieros.sql", activos_sql)
    guardar("monedas_digitales.sql", monedas_sql)

    # Combinar todos los SQLs para insertar de golpe
    combinado = combinar_sqls([
        usuarios_sql,
        empleos_sql,
        creditos_sql,
        cuentas_sql,
        activos_sql,
        monedas_sql
    ])

    archivo_combinado = os.path.join(RUTA_SALIDA, "output_completo.sql")
    with open(archivo_combinado, "w", encoding="utf-8") as f:
        f.write(combinado)
    safe_print(f"Archivo combinado generado: {archivo_combinado}")

    # Insertar en base de datos
    try:
        if usar_sql_server:
            combinado_ascii = limpiar_ascii(combinado)
            insertar_en_sql(combinado_ascii)
            safe_print("Datos insertados correctamente en la base de datos SQL Server.")
    except Exception as e:
        safe_print(f"Error al insertar datos en la base de datos SQL Server: {repr(e)}")
