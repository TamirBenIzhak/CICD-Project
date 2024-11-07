FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 5053

CMD ["sh", "-c", "sleep 10 && flask run --host=0.0.0.0 --port=5053"]
