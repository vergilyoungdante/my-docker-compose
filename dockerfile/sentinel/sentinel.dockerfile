FROM container-registry.oracle.com/graalvm/jdk:17
COPY --chown=185 sentinel-dashboard-1.8.7.jar app.jar
EXPOSE 8090
CMD ["java","-Dserver.port=8090","-Dlogging.file.path=/app-logs","-Dsentinel.dashboard.auth.username=vergil","-Dsentinel.dashboard.auth.password=xyfs2023","-jar","app.jar"]