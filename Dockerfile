# Use node LTS version as base image
FROM node:lts

# Set working directory
WORKDIR /usr/src/app

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Expose port 4200
EXPOSE 4200

# Start the Angular application
CMD ng serve --host 0.0.0.0
