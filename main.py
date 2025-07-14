import os
from db_config import insertar_en_db, usar_postgresql

# Importamos generadores
from generadores.usuarios import generar_sql_usuarios
from generadores.empleos import generar_sql_empleos
from generadores.creditos import generar_sql_creditos
from generadores.cuentas import generar_sql_cuentas
from generadores.activos import generar_sql_activos
from generadores.monedas import generar_sql_monedas

RUTA_SALIDA = "salida_sql"
NUM_USUARIOS = 100

def guardar(nombre_archivo, contenido_sql):
    os.makedirs(RUTA_SALIDA, exist_ok=True)
    ruta = os.path.join(RUTA_SALIDA, nombre_archivo)
    with open(ruta, "w", encoding="utf-8") as f:
        f.write(contenido_sql)
    print(f"📄 Guardado: {ruta}")

def combinar_sqls(sqls: list[str]):
    return "\n\n".join(sqls)

if __name__ == "__main__":
    print("🚀 Generando datos para todas las tablas...")

    usuarios_sql  = generar_sql_usuarios(NUM_USUARIOS)
    empleos_sql   = generar_sql_empleos(NUM_USUARIOS)
    creditos_sql  = generar_sql_creditos(NUM_USUARIOS)
    cuentas_sql   = generar_sql_cuentas(NUM_USUARIOS)
    activos_sql   = generar_sql_activos(NUM_USUARIOS)
    monedas_sql   = generar_sql_monedas(NUM_USUARIOS)

    guardar("usuarios.sql", usuarios_sql)
    guardar("empleos.sql", empleos_sql)
    guardar("creditos.sql", creditos_sql)
    guardar("cuentas_bancarias.sql", cuentas_sql)
    guardar("activos_financieros.sql", activos_sql)
    guardar("monedas_digitales.sql", monedas_sql)

    # Archivo único combinado
    combinado = combinar_sqls([
        usuarios_sql,
        empleos_sql,
        creditos_sql,
        cuentas_sql,
        activos_sql,
        monedas_sql
    ])
    with open("output_completo.sql", "w", encoding="utf-8") as f:
        f.write("BEGIN;\n\n" + combinado + "\n\nCOMMIT;")

    print("✅ Archivo combinado generado: output_completo.sql")

    if usar_postgresql:
        insertar_en_db(combinado)
