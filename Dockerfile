FROM node:12.2.0-alpine

RUN mkdir /app
WORKDIR /app
COPY /src /app/src
COPY /public /app/public
COPY ["package.json", "package-lock.json*", "./"]

# If you're using yarn:
#  yarn build
RUN npm install --silent && mv node_modules ../

# Expose PORT 3000 on our virtual machine so we can run our server
EXPOSE 3000

CMD [ "npm", "start" ]