FROM php:7.2

LABEL maintainer="https://github.com/cakebake"

RUN apt-get update \

	&& apt-get install -y --no-install-recommends \
	    wget \
	    curl \
	    mysql-client \
	    unzip \
	    zip \
	    git \
		openssh-client \
		rsync \

		zlib1g-dev \
		libicu-dev \
		g++ \
		libxml2-dev \
		libmcrypt-dev \
	    libfreetype6-dev \
	    libjpeg62-turbo-dev \
	    libpng-dev \
		libssl-dev \
		libbz2-dev \

	&& curl -sL https://deb.nodesource.com/setup_11.x |bash - \
	&& apt-get install -y \
		nodejs \

	&& docker-php-ext-install -j$(nproc) \
	    mysqli \
	    pdo \
	    pdo_mysql \
		mbstring \
	    iconv \
	    intl \
	    opcache \
	    xml \
		xmlrpc \
	    soap \
	    zip \
	    exif \
		sockets \
		gettext \
		ftp \
		calendar \
		bz2 \
		bcmath \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
	&& docker-php-source delete \

	&& pecl install \
		xdebug \
		mcrypt-1.0.1 \
    && docker-php-ext-enable \
		xdebug \
		mcrypt \

	&& apt-get clean \
	&& rm -fr \
		/var/lib/apt/lists/* \
		/tmp/* \
		/var/tmp/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

ENV PATH="/root/.composer/vendor/bin:${PATH}"

RUN composer global require \
		phpunit/phpunit

RUN curl -SL http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz | tar xzv --directory /tmp --strip-components=1 \
    && mv /tmp/ioncube_loader_lin_7.2.so /usr/local/lib/php/extensions/no-debug-non-zts-20170718/ \
	&& echo "zend_extension=ioncube_loader_lin_7.2.so" > /usr/local/etc/php/conf.d/00-ioncube.ini

RUN npm install -g \
		npm \
		less \
		sass
