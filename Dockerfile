# Use official Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose the port your app runs on
EXPOSE 3001

# Start the app
CMD ["node", "app.js"]
