FROM openjdk:9-jdk-slim

WORKDIR /opt/liquibase
COPY ./lib/liquibase-3.5.3-bin.tar.gz /tmp/liquibase-3.5.3-bin.tar.gz
COPY ./lib/mysql-connector-java-5.1.38-bin.jar /opt/liquibase/mysql-connector-java.jar
RUN tar -xzf /tmp/liquibase-3.5.3-bin.tar.gz -C /opt/liquibase && \
    chmod +x /opt/liquibase/liquibase && \
    ln -s /opt/liquibase/liquibase /usr/local/bin/
COPY ./scripts /scripts
RUN chmod -R +x /scripts