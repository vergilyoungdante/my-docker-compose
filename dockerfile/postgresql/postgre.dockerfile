FROM postgres:15.1-alpine
MAINTAINER vergil-young

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo 'Asia/Shanghai' >/etc/timezone

ENV POSTGRES_PASSWORD 921115
ENV PGDATA=/home/docker/postgres

VOLUME /home/docker/postgres:/var/lib/postgresql/data

EXPOSE 5432