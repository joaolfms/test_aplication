# Use a imagem Alpine como base
FROM alpine:3.12

# Atualize os pacotes existentes e instale o Python 3 e o pip
RUN apk update -y && \
    apk add python3 -y && \
    apk add py3-pip -y apk update -y

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos da aplicação para o contêiner
COPY . .

# Instale as dependências do Python com o pip
RUN pip3 install -r requirements.txt

# Defina o comando que será executado ao iniciar o contêiner
CMD ["python3", "app.py"]
