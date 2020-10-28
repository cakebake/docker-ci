#!/bin/bash

php -v | grep 'PHP 7.4' || exit 1
php -v | grep 'with the ionCube PHP Loader' || exit 1
php -v | grep 'with Zend OPcache' || exit 1
php -v | grep 'with Xdebug' || exit 1

composer --version || exit 1
phpunit --version || exit 1
node --version || exit 1
npm --version || exit 1
lessc --version || exit 1
sass --version || exit 1
