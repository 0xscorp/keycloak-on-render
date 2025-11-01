# Dockerfile
FROM quay.io/keycloak/keycloak:26.0.7

# reduces startup logs
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Expose the port Keycloak listens on
EXPOSE 8080

# ENTRYPOINT is set in the image as /opt/keycloak/bin/kc.sh
# Pass "start-dev" as the CMD
CMD ["start-dev"]
