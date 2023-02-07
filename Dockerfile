FROM python:3.x

WORKDIR /app

COPY . /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
