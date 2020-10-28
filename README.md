docker-ci
=========

[![Build Status](https://travis-ci.org/cakebake/docker-ci.svg?branch=master)](https://travis-ci.org/cakebake/docker-ci)

Docker images for CI.

PHP 7.4
-------

Based on `webdevops/php-apache-dev:7.4-alpine`: https://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/php-apache-dev.html

With

- ioncube
- composer
- phpunit
- node
- npm
- lessc
- sass
- ssh
- wget
- curl
- mariadb-client

### Docker Pull

```bash
docker pull cakebake/ci:php7.2
```

License
-------

[MIT License](LICENSE)
