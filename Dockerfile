FROM maven:3-jdk-8

RUN mkdir /src && cd /src && \
    git clone https://github.com/jericks/geoserver-shell.git && cd geoserver-shell/ && \
    mvn clean install

FROM java:openjdk-8
COPY --from=0 /src/geoserver-shell/target/gs-shell-0.4-SNAPSHOT.jar /
COPY root /
ENTRYPOINT ["/docker-entrypoint.sh"]
