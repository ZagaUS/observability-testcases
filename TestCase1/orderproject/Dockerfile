FROM registry.access.redhat.com/ubi8/openjdk-11:1.14
EXPOSE 5089
RUN mkdir -p /opt/app
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} /opt/app/app.jar

ENV POSTGRES_URL=jdbc:postgresql://dev-postgres-primary.postgresql-workspace.svc:5432/observability-demo-tables
ENV POSTGRES_USER=observability-demo-user
ENV POSTGRES_PASSWORD=observability123

WORKDIR /opt/app/
ENTRYPOINT ["java","-jar","app.jar"]