# base image
FROM node:12.2.0
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli --unsafe
RUN npm install --save @angular/material --unsafe
RUN npm install --save @angular/cdk --unsafe
RUN npm install typescript@4.0.0-dev.20200502 --unsafe
# add app
COPY . /app
# start app
CMD ng serve --host 0.0.0.0