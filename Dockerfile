    #Use the official node Image as the base images
    FROM node:18.17.0

    #set the working directory inside the container
    WORKDIR /usr/app

    #copy all the package.json in to the contianer
    #run node inside the container
    COPY package*.json ./
    RUN npm install --silent

    #copy all file inside the container
    COPY . ./

    #expose the port that the application listen on
    EXPOSE 3002

    #command to run the node application
    CMD [ "node", "app.js" ]