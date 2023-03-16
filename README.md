# Dockerize-Node.js-App with yml file

## Create a new working directory and then navigate into it. 

## Create a file called "Dockerfile" ##

## Add this SQL code to the "Dockerfile" you created above 
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"] 

## Create a new file called "docker-compose.yml" ##

## Add this code into "docker-compose.yml" file created above
version: '3.3'
services:
  app:
    build: .
    ports:
      - "3000:3000" 

## Start the application by running # "docker-compose up" # into your terminal ##

This will build the Docker image and start the application, which is accessible at http://localhost:3000



# use an official Node.js runtime as a base image
FROM node:14-alpine 

# set the working directory
WORKDIR /app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

#copy the rest of the code into the working directory in our image
COPY . . 

# expose port 3000 for the application to listen on
EXPOSE 3000


# start the application
CMD ["npm","start"]
