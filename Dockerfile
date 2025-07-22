FROM node:18

WORKDIR /app

# Show contents before copying anything (should be empty)
RUN ls -al /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Show contents after copying to verify files are present (like index.js)
RUN ls -al /app

# Expose the correct port your app listens on
EXPOSE 4000

# Start your server
CMD ["npm", "start"]
