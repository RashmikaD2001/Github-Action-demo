# Use official Node.js image as base
FROM node:22-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (to leverage Docker caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files into the container
COPY . .

# Expose the application port (change if needed)
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]
