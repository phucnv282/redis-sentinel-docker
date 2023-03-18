#!/bin/sh

sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /opt/bitnami/redis-sentinel/etc/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /opt/bitnami/redis-sentinel/etc/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /opt/bitnami/redis-sentinel/etc/sentinel.conf

redis-server /opt/bitnami/redis-sentinel/etc/sentinel.conf --sentinel
