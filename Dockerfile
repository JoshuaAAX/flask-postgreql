FROM python:3.11.3-bullseye
WORKDIR /app
ENV FLASK_HOST="0.0.0.0"
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
RUN export FLASK_APP=app.py

EXPOSE 5000:5000
CMD ["python3", "app.py"]
