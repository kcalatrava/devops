# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "kevin@kevinpina.com"

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# tell docker what port to expose
EXPOSE 8080

CMD [ "npm", "start" ]
