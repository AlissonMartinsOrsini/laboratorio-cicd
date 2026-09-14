FROM python:3.12-slim

COPY . /app

WORKDIR /app

RUN python -m pip install pytest

CMD ["python", "-m", "pytest"]