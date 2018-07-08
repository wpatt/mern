#
# Dockerfile
#

# ---- Base Node ----
FROM node:10-jessie AS base

# set working directory
RUN mkdir /approot
WORKDIR /approot

# install git
RUN apk add --no-cache git

# copy project file
# COPY package.json package-lock.json ./

RUN npm i -g create-react-app
RUN create-react-app client

# COPY . .

CMD npm run dev
