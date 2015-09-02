FROM jupyter/scipy-notebook

RUN apt-get update && apt-get install -y -q \
    wget \
    postgresql-client \
    libpq-dev

RUN pip install --upgrade psycopg2
RUN wget https://github.com/harelba/packages-for-q/raw/master/deb/q-text-as-data_1.5.0-1_all.deb
RUN dpkg -i q-text-as-data_1.5.0-1_all.deb
