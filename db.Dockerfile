FROM postgres:15-alpine

ENV POSTGRES_USER ''
ENV POSTGRES_PASSWORD ''
ENV PGDATA ''

COPY ./init.sh /docker-entrypoint-initdb.d/
COPY ./script.sql /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init.sh
