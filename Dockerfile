FROM alpine:latest

RUN addgroup -g 10001 appuser
RUN adduser -D -u 10001 -G appuser -h /home/appuser appuser

ARG STEP_CA_BIN_PATH="src/bin/step-ca"
COPY ${STEP_CA_BIN_PATH} /usr/local/bin/step-ca

USER 10001:10001

ENTRYPOINT [ "/usr/local/bin/step-ca", "--password-file", "/home/step/secrets/password", "/home/step/config/ca.json" ]