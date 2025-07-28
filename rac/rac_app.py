# app/.py

import gradio as gr
import logging
import os
import shutil
from rag_system import RAGSystem
from langchain_community.embeddings import OllamaEmbeddings





# Configuración
UPLOAD_DIR = "uploaded_docs"
os.makedirs(UPLOAD_DIR, exist_ok=True)

logging.basicConfig(level=logging.INFO)

def save_uploaded_files(files):
    """Guarda archivos PDF subidos en una carpeta local"""
    saved_paths = []
    for file in files:
        filename = os.path.basename(file.name)
        dest_path = os.path.join(UPLOAD_DIR, filename)
        shutil.copy(file.name, dest_path)
        saved_paths.append(dest_path)
        logging.info(f"Archivo guardado: {dest_path}")
    return saved_paths

def create_rag_from_files(files) -> RAGSystem:
    """Inicializa el sistema RAG con PDFs subidos por el usuario"""
    pdf_paths = save_uploaded_files(files)
    rag = RAGSystem(pdf_urls=pdf_paths)
    rag.load_documents()
    rag.create_vectorstore()
    rag.setup_chain()
    return rag

def ask_question(user_question: str, files, history) -> tuple[str, list]:
    """Procesa una pregunta con los archivos y actualiza el historial"""
    if not files:
        return "Por favor, sube al menos un archivo PDF.", history

    # Crear un nuevo sistema RAG desde los PDFs subidos
    rag = create_rag_from_files(files)

    # Reformular la pregunta si es necesario
    refined = rag.rewrite_question(user_question)
    answer = rag.answer_question(refined)

    if refined != user_question:
        full_answer = f"**Tu pregunta fue reformulada para mayor claridad:**\n> {refined}\n\n---\n{answer}"
    else:
        full_answer = answer

    # Agregar al historial
    history.append((user_question, full_answer))

    # Formatear historial para mostrar
    history_md = "\n\n".join([f"**Q:** {q}\n**A:** {a}" for q, a in history])
    return history_md, history

# Interfaz Gradio con historial y subida de PDFs
with gr.Blocks(theme=gr.themes.Soft()) as demo:
    gr.Markdown("## 📊 Asistente Económico-Financiero Inteligente")
    gr.Markdown("Sube documentos PDF y haz preguntas sobre economía, inversión, créditos o morosidad. El sistema analizará tus archivos y responderá de forma precisa.")

    with gr.Row():
        question_input = gr.Textbox(label="Tu Pregunta", placeholder="Ejemplo: ¿Qué impacto tiene la morosidad?")
        pdf_input = gr.File(file_types=[".pdf"], file_count="multiple", label="Sube uno o más archivos PDF")

    ask_button = gr.Button("Preguntar")
    answer_output = gr.Markdown(label="Respuesta")
    history_output = gr.Markdown(label="Historial de preguntas")

    state = gr.State([])  # Lista vacía inicial para historial

    def on_click(question, files, history):
        return ask_question(question, files, history)

    ask_button.click(fn=on_click, inputs=[question_input, pdf_input, state], outputs=[history_output, state])

if __name__ == "__main__":
    demo.launch()
