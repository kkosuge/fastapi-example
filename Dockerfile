FROM python:3.11

WORKDIR /app

COPY ./requirements.lock /app/requirements.txt
COPY ./pyproject.toml ./
COPY ./README.md ./
COPY ./src /app/src

RUN pip install -r /app/requirements.txt

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]
