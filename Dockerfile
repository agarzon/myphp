FROM webdevops/php-nginx-dev
MAINTAINER Alexander Garzon <agarzon@php.net>

# Install additional packages
RUN /usr/local/bin/apt-install \
        redis-server \
    && /opt/docker/bin/bootstrap.sh \
    && docker-image-cleanup

CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]
