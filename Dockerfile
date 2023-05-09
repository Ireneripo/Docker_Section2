# My base image (the one I'm using to build my new image)
FROM node

# The directory where the commands should be run
WORKDIR /app

# Copy the file where dependencies are managed
COPY package.json /app

# The commands that should be run when the imgage is created
RUN npm install

# The files in my local machine that I want to include in my new image
COPY . /app

# The port we want to open for our server to listen to
EXPOSE 80

# The commands that should be run when the container is started (this should always be the last instruction)
CMD [ "node", "server.js" ]