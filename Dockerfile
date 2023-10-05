# Use node image version 18 alpine
FROM node:18-alpine as base

# Change the working directory to /app inside the container
WORKDIR /app

# Copy all files from current folder to /app directory inside the container
COPY . /app

# Install dependencies using npm ci
RUN npm ci

# Expose the port used by the shipping-service
EXPOSE 3001

# Command to run the application when the container is started
CMD ["npm", "start"]