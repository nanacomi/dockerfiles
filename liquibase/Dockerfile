FROM openjdk:9-jdk-slim
# liquibase3.5.x系が扱えない日本語が存在したので3.4.2を利用
# Unexpected error running Liquibase: Lexical error at line 1, column 66.  Encountered: "\u304a" (12362), after : ""
WORKDIR /opt/liquibase
COPY ./lib/liquibase-3.4.2-bin.tar.gz /tmp/liquibase-3.4.2-bin.tar.gz
COPY ./lib/mysql-connector-java-5.1.38-bin.jar /opt/liquibase/mysql-connector-java.jar
RUN tar -xzf /tmp/liquibase-3.4.2-bin.tar.gz -C /opt/liquibase && \
    chmod +x /opt/liquibase/liquibase && \
    ln -s /opt/liquibase/liquibase /usr/local/bin/
COPY ./scripts /scripts
RUN chmod -R +x /scripts
