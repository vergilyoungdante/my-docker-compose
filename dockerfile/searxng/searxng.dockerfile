FROM searxng/searxng:latest
MAINTAINER vergil-young
COPY settings.yml /etc/searxng/settings.yml
COPY limiter.toml /etc/searxng/limiter.toml
COPY uwsgi.ini /etc/searxng/uwsgi.ini
