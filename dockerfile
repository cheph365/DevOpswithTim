# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install app dependencies
RUN npm install -g http-server

# Copy the rest of the app files to the container
COPY . .

# Expose the port on which your Node.js app will run (adjust this if your app uses a different port)
EXPOSE 8081

# Command to start your Node.js app
CMD ["http-server", "-p", "8080"]
