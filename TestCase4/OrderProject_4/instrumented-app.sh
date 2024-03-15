# OTEL_BAGGAGE_PROPAGATORS=tracing-context
# OTEL_EXPORTER=otlp
# OTEL_EXPORTER_ENDPOINT=http://192.168.1.51:4317
# OTEL_SERVICE_NAME=order_project-vm1

# java  -javaagent:javaagent.jar  -Dotel.logs.exporter=${OTEL_EXPORTER} -Dotel.metrics.exporter=${OTEL_EXPORTER} -Dotel.traces.exporter=${OTEL_EXPORTER} -Dotel.exporter.otlp.endpoint=${OTEL_EXPORTER_ENDPOINT} -Dotel.service.name=${OTEL_SERVICE_NAME} -Dotel.baggage.propagators=${OTEL_BAGGAGE_PROPAGATORS} -jar app.jar



java  -javaagent:javaagent.jar  -Dotel.logs.exporter=${OTEL_EXPORTER} -Dotel.metrics.exporter=${OTEL_EXPORTER} -Dotel.traces.exporter=${OTEL_EXPORTER} -Dotel.exporter.otlp.endpoint=${OTEL_EXPORTER_ENDPOINT} -Dotel.service.name=${OTEL_SERVICE_NAME} -jar app.jar