# Dockerfile
FROM quay.io/keycloak/keycloak:26.4.2

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# reduces startup logs
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Render provides PORT dynamically; use it instead of hardcoding 8080
ENV PORT=8080
ENV KC_HTTP_PORT=8080

# Expose the port Keycloak listens on
EXPOSE 8080

# ENTRYPOINT is set in the image as /opt/keycloak/bin/kc.sh
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]

# Pass "start-dev" as the CMD
CMD ["start-dev", "--http-port=8080"]
