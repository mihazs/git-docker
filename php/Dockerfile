FROM mihazs/git-docker
RUN apk --update add \
	php7 \
	php7-curl \
	php7-openssl \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-phar \
	php7-dom --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
