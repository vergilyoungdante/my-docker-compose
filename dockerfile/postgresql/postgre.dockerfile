FROM postgres:16.0-alpine3.18
MAINTAINER vergil-young

RUN

ENV POSTGRES_PASSWORD 921115
ENV PGDATA=/home/docker/postgres

VOLUME /home/docker/postgres:/var/lib/postgresql/data

EXPOSE 5432