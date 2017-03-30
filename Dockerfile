FROM node

# File Author / Maintainer
MAINTAINER Bousios Nikolaos

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Install app dependencies
RUN npm install

# Expose port
EXPOSE 80

# Expose post virtual path
VOLUME ["/usr/src/app/source/_posts"]

# Run app using pm2
CMD ["npm", "run", "start"]
