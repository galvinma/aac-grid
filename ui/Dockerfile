FROM node:15.14.0-buster

EXPOSE 3060
EXPOSE 3061

RUN apt-get update && apt-get -y install sudo && apt-get install nano

# General
RUN mkdir -p /app
WORKDIR /app
COPY /public /app/public
COPY /src /app/src
COPY /.react.env /app/.env
COPY /.gitignore /app/
COPY /docker-ui-entrypoint.sh /app/
COPY /package.json  /app/
COPY /package-lock.json  /app/

# NPM
RUN npm install serve -g
RUN npm install
RUN npm run build --no-cache

# Entry
COPY ./docker-ui-entrypoint.sh /app/docker-ui-entrypoint.sh
RUN chmod +x /app/docker-ui-entrypoint.sh
ENTRYPOINT ["/app/docker-ui-entrypoint.sh"]
