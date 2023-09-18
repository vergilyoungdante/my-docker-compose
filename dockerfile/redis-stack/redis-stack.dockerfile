FROM redis/redis-stack-server:7.2.0-v2
MAINTAINER vergil-young
COPY redis.conf /usr/local/etc/redis/redis.conf
EXPOSE 6379
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]