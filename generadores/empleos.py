from faker import Faker
import random

fake = Faker('es_ES')
Faker.seed(42)

def generar_empleo(usuario_id):
    nombre_empresa = fake.company()
    cargo = fake.job()
    salario = round(random.uniform(18000, 100000), 2)
    antiguedad = random.randint(0, 40)

    return f"""INSERT INTO empleos (
        usuario_id, nombre_empresa, cargo, salario, antiguedad_anios
    ) VALUES (
        {usuario_id}, '{nombre_empresa}', '{cargo}', {salario}, {antiguedad}
    );"""

def generar_sql_empleos(num_usuarios):
    return "\n".join([generar_empleo(uid) for uid in range(1, num_usuarios + 1)])

if __name__ == "__main__":
    with open("empleos_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql_empleos(100))
    print("✅ Archivo 'empleos_insert.sql' generado con 100 INSERTs.")
