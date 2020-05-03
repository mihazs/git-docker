FROM almir/webhook
RUN apk --update add wget \ 
	curl \
	git
RUN mkdir -p /var/scripts
COPY entrypoint.sh /var/scripts/entrypoint.sh
COPY redeploy.sh /var/scripts/redeploy.sh
RUN chmod 777 /var/scripts/entrypoint.sh
RUN chmod +x /var/scripts/redeploy.sh
EXPOSE 9000
ENV REPO_URL=${REPO_URL}
ENTRYPOINT /var/scripts/entrypoint.sh ${REPO_URL} /var/repo
