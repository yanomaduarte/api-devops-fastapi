FROM python:3.9-slim

WORKDIR /app

# Copia primeiro o arquivo de dependências
COPY requirements.txt .

# Instala as bibliotecas do Python sem guardar cache (para deixar a imagem leve)
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante do código
COPY . .

# Expõe a porta 8000 (conceito fundamental de Redes no Docker)
EXPOSE 8000

# Comando para rodar o servidor web (Uvicorn)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]