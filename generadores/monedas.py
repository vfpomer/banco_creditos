from faker import Faker
import random

fake = Faker()
Faker.seed(123)

# Monedas y sus rangos de cantidad y valor actual
monedas = {
    'BTC':     {'cantidad': (0.0001, 3),      'valor': (40000, 70000)},
    'ETH':     {'cantidad': (0.001, 10),      'valor': (1500, 4000)},
    'USDT':    {'cantidad': (10, 100000),     'valor': (1.00, 1.00)},
    'BNB':     {'cantidad': (0.01, 50),       'valor': (200, 500)},
    'ADA':     {'cantidad': (10, 100000),     'valor': (0.3, 1.5)},
    'SOL':     {'cantidad': (0.1, 500),       'valor': (20, 200)},
    'XRP':     {'cantidad': (10, 50000),      'valor': (0.3, 2)},
    'DOT':     {'cantidad': (1, 1000),        'valor': (3, 25)},
}

def generar_moneda(usuario_id):
    tipo = random.choice(list(monedas.keys()))
    rango = monedas[tipo]
    cantidad = round(random.uniform(*rango['cantidad']), 8)
    valor_actual = round(random.uniform(*rango['valor']), 2)

    return f"""INSERT INTO monedas_digitales (
        usuario_id, tipo_moneda, cantidad, valor_actual
    ) VALUES (
        {usuario_id}, '{tipo}', {cantidad}, {valor_actual}
    );"""

def generar_sql_monedas(num_usuarios, max_monedas_por_usuario=3):
    inserts = []
    for usuario_id in range(1, num_usuarios + 1):
        for _ in range(random.randint(0, max_monedas_por_usuario)):
            inserts.append(generar_moneda(usuario_id))
    return "\n".join(inserts)

if __name__ == "__main__":
    with open("monedas_digitales_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql_monedas(100))
    print("✅ Archivo 'monedas_digitales_insert.sql' generado con criptomonedas aleatorias.")
