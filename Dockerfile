FROM python:3.11-slim-buster

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/dominhhieu1405/HoneygainPot.git

WORKDIR /app/HoneygainPot

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]
