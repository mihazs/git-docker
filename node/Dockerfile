FROM almir/webhook

RUN apk --update add wget \ 
	curl \
	git \
	nodejs \
	nodejs-npm \
	yarn
COPY ../entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
RUN mkdir -p /var/scripts
EXPOSE 9000
ENTRYPOINT ./entrypoint.sh $REPO_URL /var/repo
