# Imagem base
FROM python:3.11.3

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando os arquivos do projeto
COPY . /app

# Instalando as dependências
RUN pip install -r requirements.txt
RUN pip install mysqlclient
RUN rm -rf /app/db

# Comando para iniciar o servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

