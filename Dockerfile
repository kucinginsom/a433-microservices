# Using nodejs version 14 get from docker hub
FROM node:14

# Working dir container
WORKDIR /app

# Copy source code to container
COPY . .

# env on production mode and  item-db as database host
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies and build app
RUN npm install --production --unsafe-perm && npm run build

# Expose app on port 8080 
EXPOSE 8080

# Run container with command npm start
CMD ["npm", "start"]
