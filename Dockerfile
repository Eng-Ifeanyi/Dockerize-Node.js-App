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
