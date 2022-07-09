FROM node:16.15.1

# Install dependencies
WORKDIR /src/

RUN npm install

# Expose the app port
EXPOSE 8000

# Start the app
CMD npm start
