FROM python:3.11.1-alpine

WORKDIR /app

COPY . /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
