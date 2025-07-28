# rac.py
import logging
from typing import List
from langchain.embeddings import OllamaEmbeddings
from langchain.llms import ChatOllama
from langchain.vectorstores import Chroma
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain.chains import RetrievalQA
from langchain.document_loaders import PyPDFLoader
from langchain.callbacks.streaming_stdout import StreamingStdOutCallbackHandler
from langchain.callbacks.manager import CallbackManager

PERSIST_DIRECTORY = "db"
LLM_MODEL = "llama3"
EMBEDDING_MODEL = "nomic-embed-text"
TEMPERATURE = 0.1
CHUNK_SIZE = 500
CHUNK_OVERLAP = 100

logger = logging.getLogger(__name__)

class RAGSystem:
    def __init__(self, pdf_urls: List[str], persist_directory: str = PERSIST_DIRECTORY):
        self.pdf_urls = pdf_urls
        self.persist_directory = persist_directory
        self.documents = []
        self.vectorstore = None
        self.llm = ChatOllama(
            model=LLM_MODEL,
            temperature=TEMPERATURE,
            callback_manager=CallbackManager([StreamingStdOutCallbackHandler()])
        )
        self.embeddings = OllamaEmbeddings(model=EMBEDDING_MODEL)

    def load_documents(self):
        text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=CHUNK_SIZE,
            chunk_overlap=CHUNK_OVERLAP,
            separators=["\n\n", "\n", ". ", " ", ""]
        )
        all_pages = []
        for url in self.pdf_urls:
            try:
                loader = PyPDFLoader(url)
                pages = loader.load()
                all_pages.extend(pages)
            except Exception as e:
                logger.error(f"Error loading PDF {url}: {e}")
        self.documents = text_splitter.split_documents(all_pages)

    def create_vectorstore(self):
        self.vectorstore = Chroma.from_documents(self.documents, self.embeddings)

    def setup_chain(self):
        retriever = self.vectorstore.as_retriever(search_type="similarity", search_kwargs={"k": 4})
        self.chain = RetrievalQA.from_chain_type(
            llm=self.llm,
            chain_type="stuff",
            retriever=retriever
        )

    def answer_question(self, question: str) -> str:
        try:
            return self.chain.run(question)
        except Exception as e:
            logger.error(f"Error answering question: {e}")
            return "Hubo un error al procesar tu pregunta."

    def rewrite_question(self, question: str) -> str:
        prompt = f"""
Actúa como un experto en economía y finanzas en España. Mejora la siguiente pregunta para que sea más específica, técnica o clara. 
Si la pregunta ya está bien formulada, devuélvela sin cambios. Evita añadir información no incluida en la pregunta original.

Pregunta original: "{question}"
Pregunta mejorada:
"""
        try:
            response = self.llm(prompt).strip()
            return response
        except Exception as e:
            logger.warning(f"Error al reformular pregunta: {e}")
            return question
