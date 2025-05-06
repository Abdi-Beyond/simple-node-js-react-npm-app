# Use official Node.js LTS Alpine image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching dependencies)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (update if different)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
