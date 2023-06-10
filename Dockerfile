FROM docker.io/library/python:3.10
WORKDIR /src
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
COPY ./app1 /src
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
