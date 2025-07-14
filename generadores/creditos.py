from faker import Faker
import random
from datetime import timedelta

fake = Faker('es_ES')
Faker.seed(123)

tipos_credito = ['hipoteca', 'personal', 'vehiculo']

def generar_credito(usuario_id):
    tipo = random.choice(tipos_credito)

    if tipo == 'hipoteca':
        cantidad = round(random.uniform(50000, 300000), 2)
    elif tipo == 'personal':
        cantidad = round(random.uniform(5000, 50000), 2)
    elif tipo == 'vehiculo':
        cantidad = round(random.uniform(10000, 80000), 2)

    fecha = fake.date_between(start_date='-10y', end_date='today').isoformat()
    activo = 'TRUE' if random.random() < 0.8 else 'FALSE'

    return f"""INSERT INTO creditos (
        usuario_id, tipo_credito, cantidad_solicitada, fecha_solicitud, activo
    ) VALUES (
        {usuario_id}, '{tipo}', {cantidad}, '{fecha}', {activo}
    );"""

def generar_sql_creditos(num_usuarios, max_creditos_por_usuario=2):
    inserts = []
    for usuario_id in range(1, num_usuarios + 1):
        for _ in range(random.randint(0, max_creditos_por_usuario)):
            inserts.append(generar_credito(usuario_id))
    return "\n".join(inserts)

if __name__ == "__main__":
    with open("creditos_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql_creditos(100))
    print("✅ Archivo 'creditos_insert.sql' generado con créditos aleatorios.")
