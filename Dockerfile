FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

ENV APP_VERSION=dev
EXPOSE 5000

CMD ["python", "app.py"]
