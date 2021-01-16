FROM webdevops/php-dev:8.0

LABEL maintainer="Bastian Schwarz <bastian@codename-php.de>"
LABEL description="PHP8 dev image based on webdevops/php-dev:8.0 with added phive and some config changes"

COPY --from=hyperized/phive /usr/local/bin/phive /usr/local/bin/phive

RUN sed -i '/xdebug.\(remote_\|profiler_output_dir\)/d' /opt/docker/etc/php/php.webdevops.ini

USER 1000:1000
WORKDIR /opt/project
