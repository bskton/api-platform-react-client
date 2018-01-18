FROM node:9.4.0-alpine

COPY docker/docker-entrypoint.sh /usr/local/bin/docker-app-entrypoint
RUN chmod +x /usr/local/bin/docker-app-entrypoint

ENTRYPOINT ["docker-app-entrypoint"]

RUN mkdir /app \
&& chmod 0777 /app

WORKDIR /app

EXPOSE 3000

CMD yarn start