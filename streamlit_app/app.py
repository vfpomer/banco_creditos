import streamlit as st
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import plotly.express as px
import plotly.graph_objects as go
import os
import pyodbc
from dotenv import load_dotenv
import warnings

warnings.filterwarnings('ignore')

st.set_page_config(
    page_title="Panel Banco: Morosidad y Predicción",
    page_icon="🏦",
    layout="wide"
)

st.title("🏦 Panel de Análisis Bancario: Morosidad y Predicción")
st.markdown("""
Este panel permite explorar los datos de usuarios, créditos y morosidad del banco, así como visualizar predicciones y modelos de riesgo.
""")

# ----------- Carga de datos desde SQL Server -----------
@st.cache_data(ttl=3600)
def load_banco_data():
    dotenv_path = os.path.join(os.path.dirname(__file__), '..', 'generadores', '.env')
    load_dotenv(dotenv_path)
    username = os.getenv("USUARIO_DB")
    password = os.getenv("CLAVE_BD")
    if not username or not password:
        st.error("No se encontraron las variables de entorno USUARIO_DB o CLAVE_BD.")
        return None, None, None, None, None
    conn_str = (
        'DRIVER={ODBC Driver 17 for SQL Server};'
        'SERVER=upgradeserver-vf.database.windows.net;'
        'DATABASE=Banco;'
        f'UID={username};'
        f'PWD={password};'
        'Connection Timeout=30;'
    )
    try:
        conn = pyodbc.connect(conn_str)
        usuarios = pd.read_sql("SELECT * FROM usuarios", conn)
        creditos = pd.read_sql("SELECT * FROM creditos", conn)
        activos = pd.read_sql("SELECT * FROM activos_financieros", conn)
        monedas = pd.read_sql("SELECT * FROM monedas_digitales", conn)
        cuentas = pd.read_sql("SELECT * FROM cuentas_bancarias", conn)
        return usuarios, creditos, activos, monedas, cuentas
    except Exception as e:
        st.error(f"Error de conexión a la base de datos: {e}")
        return None, None, None, None, None

usuarios, creditos, activos, monedas, cuentas = load_banco_data()

if usuarios is None:
    st.stop()

# ----------- SIDEBAR: Filtros de búsqueda -----------
st.sidebar.header("🔎 Filtros de búsqueda")

# Filtros para usuarios
st.sidebar.subheader("Filtrar Usuarios")
dni_input = st.sidebar.text_input("Buscar por DNI")
nombre_input = st.sidebar.text_input("Buscar por nombre")
moroso_filter = st.sidebar.selectbox("¿Es moroso?", options=["Todos", "Sí", "No"])

# Filtros para créditos
st.sidebar.subheader("Filtrar Créditos")
estado_credito = st.sidebar.multiselect(
    "Estado del crédito",
    options=["activo", "moroso", "pagado"],
    default=["activo", "moroso", "pagado"]
)

# Filtros para activos financieros
st.sidebar.subheader("Filtrar Activos Financieros")
mostrar_activos = st.sidebar.checkbox("Mostrar activos financieros", value=True)
tipo_activo_options = activos['tipo_activo'].unique().tolist() if not activos.empty and 'tipo_activo' in activos.columns else []
tipo_activo_filter = st.sidebar.multiselect(
    "Tipo de activo",
    options=tipo_activo_options,
    default=tipo_activo_options
)

# Filtros para monedas digitales
st.sidebar.subheader("Filtrar Monedas Digitales")
mostrar_monedas = st.sidebar.checkbox("Mostrar monedas digitales", value=True)
tipo_moneda_options = monedas['tipo_moneda'].unique().tolist() if not monedas.empty and 'tipo_moneda' in monedas.columns else []
tipo_moneda_filter = st.sidebar.multiselect(
    "Tipo de moneda",
    options=tipo_moneda_options,
    default=tipo_moneda_options
)

# Filtros para cuentas bancarias
st.sidebar.subheader("Filtrar Cuentas Bancarias")
mostrar_cuentas = st.sidebar.checkbox("Mostrar cuentas bancarias", value=True)
tipo_cuenta_options = cuentas['tipo_cuenta'].unique().tolist() if not cuentas.empty and 'tipo_cuenta' in cuentas.columns else []
tipo_cuenta_filter = st.sidebar.multiselect(
    "Tipo de cuenta",
    options=tipo_cuenta_options,
    default=tipo_cuenta_options
)

# ----------- Aplicar filtros a usuarios -----------
usuarios_filtrados = usuarios.copy()
if dni_input:
    usuarios_filtrados = usuarios_filtrados[usuarios_filtrados['dni'].astype(str).str.contains(dni_input, case=False, na=False)]
if nombre_input:
    usuarios_filtrados = usuarios_filtrados[usuarios_filtrados['nombre'].astype(str).str.contains(nombre_input, case=False, na=False)]
if moroso_filter == "Sí":
    usuarios_filtrados = usuarios_filtrados[usuarios_filtrados['es_moroso'] == 1]
elif moroso_filter == "No":
    usuarios_filtrados = usuarios_filtrados[usuarios_filtrados['es_moroso'] == 0]

# ----------- Aplicar filtros a créditos -----------
creditos_filtrados = creditos.copy()
if estado_credito:
    creditos_filtrados = creditos_filtrados[creditos_filtrados['estado'].isin(estado_credito)]

# ----------- Aplicar filtros a activos financieros -----------
activos_filtrados = activos.copy()
if tipo_activo_filter and 'tipo_activo' in activos_filtrados.columns:
    activos_filtrados = activos_filtrados[activos_filtrados['tipo_activo'].isin(tipo_activo_filter)]

# ----------- Aplicar filtros a monedas digitales -----------
monedas_filtradas = monedas.copy()
if tipo_moneda_filter and 'tipo_moneda' in monedas_filtradas.columns:
    monedas_filtradas = monedas_filtradas[monedas_filtradas['tipo_moneda'].isin(tipo_moneda_filter)]

# ----------- Aplicar filtros a cuentas bancarias -----------
cuentas_filtradas = cuentas.copy()
if tipo_cuenta_filter and 'tipo_cuenta' in cuentas_filtradas.columns:
    cuentas_filtradas = cuentas_filtradas[cuentas_filtradas['tipo_cuenta'].isin(tipo_cuenta_filter)]

# ----------- Tabs principales -----------
tabs = st.tabs([
    "📊 EDA Banco",
    "📈 Predicción Morosidad 6 meses",
    "🤖 Modelo de Morosidad",
    "📝 Conclusiones"
])

# ----------- Tab 1: EDA Banco -----------
with tabs[0]:
    st.header("Análisis Exploratorio de Datos Bancarios")

    eda_tabs = st.tabs([
        "👤 Usuarios",
        "💳 Créditos",
        "💰 Activos Financieros",
        "🏦 Cuentas Bancarias",
        "🪙 Monedas Digitales"
    ])

   # --- Usuarios ---
    with eda_tabs[0]:
        if usuarios_filtrados.empty:
            st.warning("No hay datos para mostrar con los filtros seleccionados.")
        else:
            st.subheader("Usuarios por Provincia")
            if 'provincia' in usuarios_filtrados.columns:
                provincia_counts = usuarios_filtrados['provincia'].value_counts().reset_index()
                provincia_counts.columns = ['provincia', 'usuarios']
                fig = px.bar(provincia_counts, x='provincia', y='usuarios', title="Cantidad de usuarios por provincia")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'provincia' en usuarios.")

            st.subheader("Distribución de Morosidad")
            if 'es_moroso' in usuarios_filtrados.columns:
                moroso_counts = usuarios_filtrados['es_moroso'].value_counts().rename({0: "No moroso", 1: "Moroso"})
                fig = px.pie(values=moroso_counts.values, names=moroso_counts.index, title="Distribución de morosidad")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'es_moroso' en usuarios.")

            st.subheader("Usuarios por Estado Civil")
            if 'estado_civil' in usuarios_filtrados.columns:
                estado_civil_counts = usuarios_filtrados['estado_civil'].value_counts().reset_index()
                estado_civil_counts.columns = ['estado_civil', 'usuarios']
                fig = px.bar(estado_civil_counts, x='estado_civil', y='usuarios', title="Usuarios por estado civil")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'estado_civil' en usuarios.")

            st.subheader("Usuarios por Profesión")
            if 'profesion' in usuarios_filtrados.columns:
                profesion_counts = usuarios_filtrados['profesion'].value_counts().head(20).reset_index()
                profesion_counts.columns = ['profesion', 'usuarios']
                fig = px.bar(profesion_counts, x='profesion', y='usuarios', title="Top 20 profesiones de usuarios")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'profesion' en usuarios.")

            st.subheader("Distribución de Edad de Usuarios")
            if 'edad' in usuarios_filtrados.columns:
                fig = px.histogram(usuarios_filtrados, x='edad', nbins=30, title="Distribución de edad de usuarios")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'edad' en usuarios.")

            st.subheader("Distribución de Salario de Usuarios")
            if 'salario' in usuarios_filtrados.columns:
                fig = px.histogram(usuarios_filtrados, x='salario', nbins=30, title="Distribución de salario de usuarios")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'salario' en usuarios.")

            # Mostrar gráficos de morosos solo si el filtro es_moroso NO está en "No"
            if moroso_filter != "No":
                st.subheader("Usuarios Morosos por Provincia")
                if 'provincia' in usuarios_filtrados.columns and 'es_moroso' in usuarios_filtrados.columns:
                    morosos_prov = usuarios_filtrados[usuarios_filtrados['es_moroso'] == 1]['provincia'].value_counts().reset_index()
                    morosos_prov.columns = ['provincia', 'morosos']
                    fig = px.bar(morosos_prov, x='provincia', y='morosos', title="Morosos por provincia")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay datos suficientes para morosos por provincia.")

                st.subheader("Usuarios Morosos por Estado Civil")
                if 'estado_civil' in usuarios_filtrados.columns and 'es_moroso' in usuarios_filtrados.columns:
                    morosos_ec = usuarios_filtrados[usuarios_filtrados['es_moroso'] == 1]['estado_civil'].value_counts().reset_index()
                    morosos_ec.columns = ['estado_civil', 'morosos']
                    fig = px.bar(morosos_ec, x='estado_civil', y='morosos', title="Morosos por estado civil")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay datos suficientes para morosos por estado civil.")

                st.subheader("Usuarios Morosos por Profesión")
                if 'profesion' in usuarios_filtrados.columns and 'es_moroso' in usuarios_filtrados.columns:
                    morosos_prof = usuarios_filtrados[usuarios_filtrados['es_moroso'] == 1]['profesion'].value_counts().head(20).reset_index()
                    morosos_prof.columns = ['profesion', 'morosos']
                    fig = px.bar(morosos_prof, x='profesion', y='morosos', title="Top 20 profesiones de usuarios morosos")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay datos suficientes para morosos por profesión.")

            st.markdown("### Tabla de usuarios filtrados")
            st.dataframe(usuarios_filtrados, use_container_width=True)

    # --- Créditos ---
    with eda_tabs[1]:
        if creditos_filtrados.empty:
            st.warning("No hay datos para mostrar con los filtros seleccionados.")
        else:
            st.subheader("Créditos por Usuario (Top 30)")
            if 'usuario_id' in creditos_filtrados.columns:
                top_usuarios = creditos_filtrados['usuario_id'].value_counts().head(30).reset_index()
                top_usuarios.columns = ['usuario_id', 'num_creditos']
                fig = px.bar(top_usuarios, x='usuario_id', y='num_creditos',
                             labels={'usuario_id': 'Usuario ID', 'num_creditos': 'Nº créditos'},
                             title="Top 30 usuarios con más créditos")
                st.plotly_chart(fig, use_container_width=True)
            else:
                st.info("No hay columna 'usuario_id' en créditos.")

            st.markdown("### Tabla de créditos filtrados")
            st.dataframe(creditos_filtrados, use_container_width=True)

    # --- Activos Financieros ---
    with eda_tabs[2]:
        if mostrar_activos:
            if activos_filtrados.empty:
                st.warning("No hay datos para mostrar con los filtros seleccionados.")
            else:
                st.subheader("Activos Financieros por Usuario (Top 30)")
                if 'usuario_id' in activos_filtrados.columns and 'monto' in activos_filtrados.columns:
                    activos_sum = activos_filtrados.groupby('usuario_id')['monto'].sum().sort_values(ascending=False).head(30).reset_index()
                    activos_sum.columns = ['usuario_id', 'monto_total']
                    fig = px.bar(activos_sum, x='usuario_id', y='monto_total',
                                 labels={'usuario_id': 'Usuario ID', 'monto_total': 'Monto total'},
                                 title="Top 30 usuarios por monto total en activos")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay columnas necesarias en activos financieros.")

                st.markdown("### Tabla de activos financieros filtrados")
                st.dataframe(activos_filtrados, use_container_width=True)

    # --- Cuentas Bancarias ---
    with eda_tabs[3]:
        if mostrar_cuentas:
            if cuentas_filtradas.empty:
                st.warning("No hay datos para mostrar con los filtros seleccionados.")
            else:
                st.subheader("Cuentas Bancarias")
                if 'usuario_id' in cuentas_filtradas.columns:
                    cuentas_sum = cuentas_filtradas['usuario_id'].value_counts().head(30).reset_index()
                    cuentas_sum.columns = ['usuario_id', 'num_cuentas']
                    fig = px.bar(cuentas_sum, x='usuario_id', y='num_cuentas',
                                 labels={'usuario_id': 'Usuario ID', 'num_cuentas': 'Nº cuentas'},
                                 title="Top 30 usuarios por número de cuentas bancarias")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay columna 'usuario_id' en cuentas bancarias.")
                st.markdown("### Tabla de cuentas bancarias filtradas")
                st.dataframe(cuentas_filtradas, use_container_width=True)

    # --- Monedas Digitales ---
    with eda_tabs[4]:
        if mostrar_monedas:
            if monedas_filtradas.empty:
                st.warning("No hay datos para mostrar con los filtros seleccionados.")
            else:
                st.subheader("Monedas Digitales")
                if 'usuario_id' in monedas_filtradas.columns:
                    monedas_sum = monedas_filtradas['usuario_id'].value_counts().head(30).reset_index()
                    monedas_sum.columns = ['usuario_id', 'num_monedas']
                    fig = px.bar(monedas_sum, x='usuario_id', y='num_monedas',
                                 labels={'usuario_id': 'Usuario ID', 'num_monedas': 'Nº monedas'},
                                 title="Top 30 usuarios por número de monedas digitales")
                    st.plotly_chart(fig, use_container_width=True)
                else:
                    st.info("No hay columna 'usuario_id' en monedas digitales.")
                st.markdown("### Tabla de monedas digitales filtradas")
                st.dataframe(monedas_filtradas, use_container_width=True)

# ----------- Tab 2: Predicción Morosidad 6 meses -----------
with tabs[1]:
    st.header("Predicción de Morosos y Créditos (Próximos 6 meses)")

    st.markdown("##### Predicción de morosos nuevos y créditos nuevos por mes (Julio–Diciembre 2025)")

    # Datos de ejemplo (puedes reemplazar por los calculados en tu notebook)
    df_pred = pd.DataFrame({
        "Fecha": pd.date_range("2025-07-31", periods=6, freq="M"),
        "Morosos esperados": [16, 16, 16, 15, 15, 15],
        "Créditos esperados": [137, 137, 137, 137, 138, 138],
    })
    df_pred["Tasa de morosidad (%)"] = (df_pred["Morosos esperados"] / df_pred["Créditos esperados"] * 100).round(2)

    st.dataframe(df_pred, use_container_width=True)

    fig = go.Figure()
    fig.add_trace(go.Scatter(x=df_pred["Fecha"], y=df_pred["Morosos esperados"], mode='lines+markers', name="Morosos"))
    fig.add_trace(go.Scatter(x=df_pred["Fecha"], y=df_pred["Créditos esperados"], mode='lines+markers', name="Créditos"))
    fig.update_layout(title="Predicción de morosos y créditos nuevos", xaxis_title="Fecha", yaxis_title="Cantidad")
    st.plotly_chart(fig, use_container_width=True)

    fig2 = px.line(df_pred, x="Fecha", y="Tasa de morosidad (%)", markers=True, title="Tasa de morosidad esperada (%)")
    st.plotly_chart(fig2, use_container_width=True)

    st.markdown("""
    **Conclusiones clave:**
    - La tasa de morosidad esperada se mantiene estable entre 10.8% y 11.8%.
    - No se esperan picos preocupantes a corto plazo.
    - La predicción sugiere un comportamiento controlado del riesgo crediticio.
    """)

# ----------- Tab 3: Modelo de Morosidad -----------
with tabs[2]:
    st.header("Modelo de Predicción de Morosidad")

    st.markdown("""
    Se entrenó un modelo Random Forest para predecir la variable `es_moroso` usando características como edad, salario, provincia, estado civil, profesión, cantidad de créditos y valor de activos.
    """)

    st.markdown("##### Ejemplo de métricas del modelo (puedes reemplazar por tus resultados reales):")
    st.code("""
Accuracy promedio (CV): 0.89
Mejor F1 Score (CV): 0.90

Reporte de clasificación:
              precision    recall  f1-score   support

           0       0.99      0.99      0.99     70560
           1       0.99      0.99      0.99    102850

    accuracy                           0.99    173410
   macro avg       0.99      0.99      0.99    173410
weighted avg       0.99      0.99      0.99    173410
    """, language="text")

    st.markdown("##### Importancia de variables (ejemplo):")
    st.bar_chart(pd.Series({
        "salario": 0.25,
        "edad": 0.18,
        "cantidad_creditos": 0.16,
        "valor_activos": 0.15,
        "provincia": 0.10,
        "estado_civil": 0.09,
        "profesion": 0.07
    }))

    st.markdown("""
    **Notas:**
    - El modelo muestra alta precisión y generaliza bien.
    - Las variables más influyentes son salario, edad y cantidad de créditos.
    - Se recomienda monitorear el modelo y actualizarlo con nuevos datos.
    """)

# ----------- Tab 4: Conclusiones -----------
with tabs[3]:
    st.header("Conclusiones Generales del Análisis Bancario")

    st.markdown("""
- La tasa de morosidad esperada ronda el 11% para los próximos 6 meses.
- El modelo de predicción de morosidad es robusto y útil para la gestión de riesgo.
- Se recomienda refinar los modelos de scoring, automatizar alertas tempranas y considerar modelos avanzados de predicción temporal.
- La entidad debe provisionar entre **75.000 € y 80.000 € mensuales** por pérdidas esperadas de nuevos créditos morosos.
- Es fundamental monitorear periódicamente el desempeño del modelo y actualizarlo con nuevos datos.
    """)

    st.info("Panel desarrollado con Streamlit. Datos y modelos basados en notebooks de análisis y predicción de morosidad bancaria.")

# ----------- Descargable -----------
with st.expander("Descargar datos de usuarios filtrados"):
    st.dataframe(usuarios_filtrados, use_container_width=True)
    csv = usuarios_filtrados.to_csv(index=False).encode('utf-8')
    st.download_button(
        "Descargar usuarios filtrados (CSV)",
        data=csv,
        file_name="usuarios_filtrados.csv",
        mime="text/csv",
    )