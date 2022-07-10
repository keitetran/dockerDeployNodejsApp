FROM node:16

# Create app directory
WORKDIR /usr/src/app

RUN adduser -S app
RUN chown -R app /usr/src/app
USER app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm install --save pm2

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "run", "pm2" ]
