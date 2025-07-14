from faker import Faker
import random

fake = Faker('es_ES')
Faker.seed(99)

tipos_cuenta = ['corriente', 'ahorro', 'nómina', 'empresa']
cuentas_usadas = set()

def generar_numero_cuenta():
    while True:
        numero = 'ES' + str(random.randint(10, 99))  # código de control
        numero += ''.join([str(random.randint(0, 9)) for _ in range(20)])
        if numero not in cuentas_usadas:
            cuentas_usadas.add(numero)
            return numero

def generar_cuenta(usuario_id):
    numero_cuenta = generar_numero_cuenta()
    tipo_cuenta = random.choice(tipos_cuenta)
    saldo = round(random.uniform(-1000, 100000), 2)

    return f"""INSERT INTO cuentas_bancarias (
        usuario_id, numero_cuenta, tipo_cuenta, saldo
    ) VALUES (
        {usuario_id}, '{numero_cuenta}', '{tipo_cuenta}', {saldo}
    );"""

def generar_sql_cuentas(num_usuarios, max_cuentas_por_usuario=2):
    inserts = []
    for usuario_id in range(1, num_usuarios + 1):
        for _ in range(random.randint(1, max_cuentas_por_usuario)):
            inserts.append(generar_cuenta(usuario_id))
    return "\n".join(inserts)

if __name__ == "__main__":
    with open("cuentas_bancarias_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql_cuentas(100))
    print("✅ Archivo 'cuentas_bancarias_insert.sql' generado con cuentas únicas.")
