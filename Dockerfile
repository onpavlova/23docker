# docker run -p 8000:8000 --name cont_fastapi23 cont_fastapi23

FROM python:3.9-buster

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python", "main.py"]

LABEL authors="ONP"
