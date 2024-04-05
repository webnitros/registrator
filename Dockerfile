FROM gliderlabs/registrator:master

COPY dockerentrypoint.sh /docker-entrypoint/dockerentrypoint.sh

RUN chmod +x /docker-entrypoint/dockerentrypoint.sh

ENTRYPOINT ["sh", "/docker-entrypoint/dockerentrypoint.sh"]
