FROM kibana:8.6.1
MAINTAINER vergil-young
COPY kibana.yml /usr/share/kibana/config/kibana.yml
EXPOSE 5601
CMD ["/usr/local/bin/kibana-docker"]