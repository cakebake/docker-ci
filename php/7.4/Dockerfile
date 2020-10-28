FROM webdevops/php-apache-dev:7.4-alpine

ENV PATH="/root/.composer/vendor/bin:${PATH}"

RUN apk-install \
        nodejs \
        npm \
        mariadb-client \
    && npm install -g \
        npm \
        less \
        sass \
    && npm cache clean --force \
    && composer global require \
        phpunit/phpunit \
    && composer clearcache
