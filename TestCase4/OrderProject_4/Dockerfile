# FROM registry.access.redhat.com/ubi8/openjdk-11:1.14
# EXPOSE 5089
# RUN mkdir -p /opt/app
# ARG JAR_FILE=target/*.jar
# ADD ${JAR_FILE} /opt/app/app.jar

# ENV POSTGRES_URL=jdbc:postgresql://dev-postgres-primary.postgresql-workspace.svc:5432/observability-demo-tables
# ENV POSTGRES_USER=observability-demo-user
# ENV POSTGRES_PASSWORD=observability123

# ENV OTEL_EXPORTER=otlp
# ENV OTEL_EXPORTER_ENDPOINT=http://192.168.1.51:5089
# ENV OTEL_SERVICE_NAME=order_project-vm1


# #ADDED BY HARI
# ENV OTEL_BAGGAGE_PROPAGATORS=tracing-context

# COPY ./javaagent.jar /opt/app
# COPY ./instrumented-app.sh /opt/app

# WORKDIR /opt/app/

# ENTRYPOINT ["/bin/bash", "-c", "./instrumented-app.sh"]



FROM registry.access.redhat.com/ubi8/openjdk-11:1.14
EXPOSE 8084
RUN mkdir -p /opt/app
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} /opt/app/app.jar

ENV POSTGRES_URL=jdbc:postgresql://dev-postgres-primary.postgresql-workspace.svc:5432/observability-demo-tables
ENV POSTGRES_USER=observability-demo-user
ENV POSTGRES_PASSWORD=observability123

ENV OTEL_EXPORTER=otlp
ENV OTEL_EXPORTER_ENDPOINT=http://192.168.1.51:4317
ENV OTEL_SERVICE_NAME=order_project-vm1

COPY ./javaagent.jar /opt/app
COPY ./instrumented-app.sh /opt/app

WORKDIR /opt/app/

ENTRYPOINT ["/bin/bash", "-c", "./instrumented-app.sh"]