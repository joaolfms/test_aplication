# Escolha a imagem do Python3 mais recente baseada em Alpine
FROM python:3.11.1-alpine3.16

# Define o diretório de trabalho do container
WORKDIR /app

# Copia todos os arquivos da raiz para o diretório /app
COPY . /app

# Instala o pip
RUN apk update && pip3 install --upgrade pip

# Instala as dependências do aplicativo
RUN pip3 install -r requirements.txt

# Define o comando para iniciar o aplicativo
CMD ["python3", "app.py"]
