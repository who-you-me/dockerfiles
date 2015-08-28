FROM jupyter/scipy-notebook

RUN apt-get update && apt-get install -y -q \
    postgresql-client \
    libpq-dev

RUN pip install --upgrade psycopg2
