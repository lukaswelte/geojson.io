FROM node:6

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json

RUN npm install --production
RUN npm install --production serve@6.5.3

COPY ./ /usr/src/app/

EXPOSE 8080
CMD ["/usr/src/app/node_modules/.bin/serve", "-p", "8080"]
