FROM node:18.17.0

WORKDIR /usr/app

COPY package*.json ./
RUN npm install --silent

COPY . ./

EXPOSE 3002

CMD [ "node", "app.js" ]