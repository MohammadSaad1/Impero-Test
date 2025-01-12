# pull the base image
FROM node:latest

# set the working direction
WORKDIR /impero-code-test

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./

COPY package-lock.json ./

RUN npm install

# add app
COPY . ./

# start app
CMD ["yarn", "start"]