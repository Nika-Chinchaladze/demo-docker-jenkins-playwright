# Use a base image with Node.js and Playwright dependencies
FROM mcr.microsoft.com/playwright:focal

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your project files
COPY . .

# Set environment variable for CI
ENV CI=true

# Run Playwright installation
RUN npx playwright install --with-deps

# Default command (can be overridden in Jenkinsfile)
CMD ["npx", "playwright", "test"]
