FROM almir/webhook

RUN apk --update add wget \ 
	curl \
	git \
	php7 \
	php7-curl \
	php7-openssl \
	php7-iconv \
	php7-json \
	php7-mbstring \
	php7-phar \
	php7-dom --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
COPY ../entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
RUN mkdir -p /var/scripts
EXPOSE 9000
ENTRYPOINT ./entrypoint.sh $REPO_URL /var/repo
