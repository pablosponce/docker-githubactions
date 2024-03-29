FROM node:17

EXPOSE 3000

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install

COPY --chown=node:node . .

CMD [ "node", "index.js" ]



