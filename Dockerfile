# Sets the base image
FROM node:7

RUN mkdir -p /app

# Sets the working directory in the container
WORKDIR /app

# copy the dependencies file to the working directory             
COPY package.json /app

# Install dependencies
RUN npm install

# Copy the content of the local src directory to the working directory
COPY . /app
       
EXPOSE 5000
CMD ["npm", "run", "start"]