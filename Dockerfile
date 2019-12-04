FROM php:7.4-cli-alpine

LABEL "repository"="https://github.com/localheinz/composer-require-checker-action"
LABEL "homepage"="https://github.com/localheinz/composer-require-checker-action"
LABEL "maintainer"="Andreas Möller <am@localheinz.com>"

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_REQUIRE_CHECKER_VERSION_DEFAULT=2.0.0

COPY memory.ini /usr/local/etc/php/conf.d/memory.ini

RUN composer global require maglnet/composer-require-checker:$COMPOSER_REQUIRE_CHECKER_VERSION_DEFAULT --no-interaction --no-progress --no-suggest

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
