from faker import Faker
import random

fake = Faker('es_ES')
Faker.seed(42)

tipos_activo = {
    'ahorro': (500, 100000),
    'plan de jubilación': (5000, 250000),
    'inversiones': (1000, 300000),
    'bitcoin': (500, 100000)
}

def generar_activo(usuario_id):
    tipo = random.choice(list(tipos_activo.keys()))
    min_val, max_val = tipos_activo[tipo]
    monto = round(random.uniform(min_val, max_val), 2)
    descripcion = fake.sentence(nb_words=6)

    return f"""INSERT INTO activos_financieros (
        usuario_id, tipo_activo, descripcion, monto
    ) VALUES (
        {usuario_id}, '{tipo}', '{descripcion}', {monto}
    );"""

def generar_sql_activos(num_usuarios, max_activos_por_usuario=3):
    inserts = []
    for usuario_id in range(1, num_usuarios + 1):
        for _ in range(random.randint(0, max_activos_por_usuario)):
            inserts.append(generar_activo(usuario_id))
    return "\n".join(inserts)

if __name__ == "__main__":
    with open("activos_financieros_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql_activos(100))
    print("✅ Archivo 'activos_financieros_insert.sql' generado con activos variados.")
