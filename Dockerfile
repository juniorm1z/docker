FROM node:14-alpine3.12
WORKDIR /home/node
COPY package*.json ./
RUN npm install
COPY . ./
VOLUME [ "/home/node/uploads" ]
CMD [ "npm", "start" ]
EXPOSE 80