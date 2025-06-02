FROM redis:8.0.2
MAINTAINER vergil-young
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY redis-full.conf /usr/local/etc/redis/redis-full.conf
EXPOSE 6379
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]