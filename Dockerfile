# Use an official Node runtime as a parent image
FROM node:lts-alpine3.17
ENV NODE_ENV=production
# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json /app/

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
