FROM node:18-alpine3.15

WORKDIR /sandbox/test

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]

EXPOSE 4000