from faker import Faker
import random
import string

fake = Faker('es_ES')
Faker.seed(0)

estados_civiles = ['Soltero', 'Casado', 'Divorciado', 'Viudo']
nacionalidades = ['Española', 'Argentina', 'Francesa', 'Alemana', 'Italiana']
dni_usados = set()
email_usados = set()

def generar_dni():
    letras = "TRWAGMYFPDXBNJZSQVHLCKE"
    while True:
        numero = random.randint(10000000, 99999999)
        letra = letras[numero % 23]
        dni = f"{numero}{letra}"
        if dni not in dni_usados:
            dni_usados.add(dni)
            return dni

def generar_telefono_espanol():
    # Teléfonos móviles en España suelen empezar con 6 o 7 y tener 9 dígitos
    prefijo = random.choice(['6', '7'])
    numero = ''.join(random.choices(string.digits, k=8))
    return f"{prefijo}{numero}"

def generar_email():
    while True:
        email = fake.unique.email()
        if email not in email_usados:
            email_usados.add(email)
            return email

def generar_usuario():
    nombre = fake.first_name()
    apellido = fake.last_name()
    estado_civil = random.choice(estados_civiles)
    dni = generar_dni()
    nacionalidad = random.choice(nacionalidades)
    fecha_nacimiento = fake.date_of_birth(minimum_age=18, maximum_age=80).isoformat()
    direccion = fake.address().replace("\n", ", ")
    codigo_postal = fake.postcode()
    provincia = fake.state()
    telefono = generar_telefono_espanol()
    email = generar_email()
    es_moroso = random.choice(['TRUE', 'FALSE'])

    return f"""INSERT INTO usuarios (
        nombre, apellido, estado_civil, dni, nacionalidad,
        fecha_nacimiento, direccion, codigo_postal, provincia,
        telefono, email, es_moroso
    ) VALUES (
        '{nombre}', '{apellido}', '{estado_civil}', '{dni}', '{nacionalidad}',
        '{fecha_nacimiento}', '{direccion}', '{codigo_postal}', '{provincia}',
        '{telefono}', '{email}', {es_moroso}
    );"""

def generar_sql(cantidad):
    return "\n".join([generar_usuario() for _ in range(cantidad)])

if __name__ == "__main__":
    with open("usuarios_insert.sql", "w", encoding="utf-8") as f:
        f.write(generar_sql(100))
    print("✅ Archivo 'usuarios_insert.sql' generado con 100 INSERTs válidos.")
