FROM redis:alpine
MAINTAINER Frédéric T <xmedias@easycom.digital>

COPY redis.conf /usr/local/etc/redis/redis.conf

RUN mkdir -p /var/run/redis
RUN chown redis:redis /var/run/redis/

RUN mkdir -p /var/log/redis
RUN chown redis:redis /var/log/redis/

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
