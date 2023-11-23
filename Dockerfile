FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencis
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm Install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]