from usuarios import generar_usuarios
from empleos import main as main_empleos
from activos import main as main_activos
from monedas import main as main_monedas
from creditos import main as main_creditos

def main():
    print(" Iniciando carga de datos en la base de datos...")

    try:
        # Paso 1: Insertar 100 usuarios
        print(" Insertando 100 usuarios...")
        generar_usuarios(100)  # Esta función debe crear usuarios en la tabla `usuarios`

        # Paso 2: Insertar empleos
        print(" Insertando empleos para usuarios...")
        main_empleos()

        # Paso 3: Insertar activos financieros
        print(" Insertando activos financieros para usuarios...")
        main_activos()

        # Paso 4: Insertar monedas digitales
        print(" Insertando monedas digitales para usuarios...")
        main_monedas()

        # Paso 5: Insertar créditos
        print(" Insertando créditos para usuarios...")
        main_creditos()

        print("\n Todos los datos fueron insertados correctamente.")
    except Exception as e:
        print("Error durante la ejecución del proceso:", e)

if __name__ == "__main__":
    main()
