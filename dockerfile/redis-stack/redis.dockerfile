FROM redis/redis-stack-server:7.4.0-v0
MAINTAINER vergil-young
COPY redis.conf ./redis-stack.conf
EXPOSE 6379
CMD [ "redis-stack-server", "redis-stack.conf" ]