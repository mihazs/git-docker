FROM mihazs/git-docker
RUN apk --update add \
	php7 \
	autoconf \
	file \
	g++ \
	gcc \
    libc-dev \
    make \
    pkgconf \
    re2c \
    zlib-dev \
    libmemcached-dev \
	freetype \
	php7-dev \
	php7-curl \
	php7-openssl \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-opcache \
	php7-pdo \
	php7-gd \
	php7-openssl \	
	php7-shmop \
	php7-tokenizer \
	php7-phar \
	php7-posix \
	php7-dom \
	php7-xml \
	php7-simplexml \
	php7-xmlwriter \
	php7-ctype \
	php7-calendar \
	php7-mysqli \
	php7-pdo_mysql \
	php7-intl \
	--repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
RUN rm -rf /var/scripts/redeploy.sh
COPY redeploy.sh /var/scripts/redeploy.sh
RUN chmod +x /var/scripts/redeploy.sh