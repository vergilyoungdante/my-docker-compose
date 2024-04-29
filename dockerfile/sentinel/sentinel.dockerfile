FROM openjdk:8-jre-slim

# copy sentinel jar
COPY sentinel-dashboard-1.8.7.jar /home/sentinel-dashboard.jar

ENV JAVA_OPTS '-Dserver.port=8090 -Dcsp.sentinel.dashboard.server=113.141.90.115:8090 -Dsentinel.dashboard.auth.username=vergil \
    -Dsentinel.dashboard.auth.password=xyfs2023 -Dcsp.sentinel.api.port=8719'

RUN chmod -R +x /home/sentinel-dashboard.jar

EXPOSE 8090
EXPOSE 8719

CMD java ${JAVA_OPTS} -jar /home/sentinel-dashboard.jar