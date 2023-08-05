# Use the official Node.js image as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that your Node.js app is listening on (replace 3000 with your app's port if needed)
EXPOSE 69 7000

# Start your Node.js application
CMD ["node", "index.js"]
