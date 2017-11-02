FROM node:alpine

ARG NODE_ENV=production

COPY . .

RUN npm install -g webpack
RUN npm install
RUN npm run build-client
RUN npm run build-server

ENTRYPOINT ["/bin/sh"]