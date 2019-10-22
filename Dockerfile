FROM node:12.2.0-alpine

RUN mkdir /app
WORKDIR /app
COPY /src /app/src
COPY /public /app/public
COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]