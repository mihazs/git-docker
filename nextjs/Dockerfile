FROM mihazs/git-docker

RUN apk --update add \
	nodejs \
	nodejs-npm \
	yarn
RUN rm -rf /var/scripts/redeploy.sh
COPY redeploy.sh /var/scripts/redeploy.sh
RUN chmod 777 /var/scripts/redeploy.sh