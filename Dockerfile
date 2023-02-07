FROM python:3.10.6-alpine

WORKDIR /app

COPY . /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
