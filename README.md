![Banco Créditos](img/imagen_readme.jpg)

# Banco Créditos: Análisis y Predicción de Morosidad

Este repositorio proporciona una solución integral para el análisis exploratorio, modelado predictivo y visualización de datos bancarios, con especial énfasis en la morosidad y el riesgo crediticio.

## Tabla de Contenidos

- [Estructura del Proyecto](#estructura-del-proyecto)
- [Descripción](#descripción)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Ejecución](#ejecución)
- [Resultados](#resultados)
- [Contacto](#contacto)
- [Licencia](#licencia)

## Estructura del Proyecto

```
├── generadores/
│   ├── main.py
│   ├── usuarios.py
│   ├── creditos.py
│   ├── activos.py
│   ├── monedas.py
│   ├── cuentas.py
│   └── .env
├── notebooks/
│   ├── banco_EDA.ipynb
│   ├── banco_6meses.ipynb
│   ├── modelo_morosidad.ipynb
│   └── banco_prep.ipynb
├── streamlit_app/
│   └── app.py
├── docs/
│   ├── mapa_usuarios_provincias.html
│   └── usuarios_por_provincia.png
├── salida_sql/
├── img/
│   └── icono.jpg
├── db_config.py
├── Banco.db
├── nacionalidades.txt
├── requirements.txt
├── README.md
```

## Descripción

- **notebooks/**: Jupyter Notebooks para análisis exploratorio, modelado y predicción.
- **generadores/**: Scripts para la generación de datos sintéticos y carga en la base de datos.
- **streamlit_app/**: Aplicación interactiva para la visualización y exploración de datos y modelos.
- **docs/**: Resultados y visualizaciones exportadas.
- **img/**: Imágenes utilizadas en la documentación y la aplicación.

## Requisitos

- Python 3.8 o superior
- Paquetes requeridos: consultar [`requirements.txt`](requirements.txt)
- SQL Server (Azure) con las siguientes tablas: `usuarios`, `creditos`, `activos_financieros`, `monedas_digitales`, `cuentas_bancarias`
- Archivo `.env` con credenciales de la base de datos en `generadores/.env`

## Instalación

1. Clona el repositorio:
    ```sh
    git clone https://github.com/vfpomer/banco_creditos.git
    cd banco_creditos
    ```

2. Instala las dependencias:
    ```sh
    pip install -r requirements.txt
    ```

3. Configura el archivo `.env` en `generadores/.env`:
    ```env
    USUARIO_DB=tu_usuario
    CLAVE_BD=tu_clave
    ```

## Ejecución

### 1. Análisis y Modelado

Ejecuta los notebooks disponibles en [`notebooks/`](notebooks/) para realizar:

- Análisis exploratorio (`banco_EDA.ipynb`)
- Predicción de morosidad y créditos (`banco_6meses.ipynb`)
- Modelado de riesgo (`modelo_morosidad.ipynb`)

### 2. Panel Interactivo

Inicia la aplicación de Streamlit:

```sh
streamlit run streamlit_app/app.py
```

Accede a la interfaz web para explorar los datos, aplicar filtros y visualizar predicciones.

## Resultados

- Mapas y gráficos disponibles en [`docs/`](docs/)
- Panel interactivo con filtros y visualizaciones avanzadas
- Modelos predictivos con métricas de precisión y análisis de variables

## Contacto

¿Tienes dudas o sugerencias? Abre un issue en [GitHub](https://github.com/vfpomer/banco_creditos/issues).

---

## Licencia

Este proyecto se distribuye bajo la licencia MIT.

