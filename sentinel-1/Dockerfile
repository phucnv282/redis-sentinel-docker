FROM bitnami/redis-sentinel:7.0.9-debian-11-r0

ENV SENTINEL_QUORUM 2
ENV SENTINEL_DOWN_AFTER 1000
ENV SENTINEL_FAILOVER 1000

WORKDIR /

COPY sentinel.conf /opt/bitnami/redis-sentinel/etc/
COPY sentinel-entrypoint.sh .

EXPOSE 26379

ENTRYPOINT ["./sentinel-entrypoint.sh"]
