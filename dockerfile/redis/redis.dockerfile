FROM redis:7.2-rc2-alpine
MAINTAINER vergil-young
COPY redis.conf /usr/local/etc/redis/redis.conf
EXPOSE 6379
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]