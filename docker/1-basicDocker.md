Table of content
- [Set tag name](#set-tag-name-to-image)
- [Run the image](#running-the-image)
- [Access container console](#access-container-console)


### Setting Image

In 'Dockerfile' of working directory, add these

```
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 8000
CMD ["node","index.js"]
```
+ WORKDIR is the working directory within the container
+ COPY package.json copies that files to the container - addeding it seprately because it will cache after
+ run npm insall will install all the dependencies
+ COPY - first dot is "this" directory and './' is the /app directory in the container
+ EXPOSE 8000 is the port which app is running - It a 'useless' command used for documentation purposes

Now, run 
    
    docker build .

In the working directory to create the image

<br>

Run following command to list all the images

    docker image ls

Deleting the image

    docker image rm [imageid]


###  Set tag name to image

    docker build -t node-app-image .


###  Running the image

    docker run -p 8000:8000 -d --name node-app-container node-app-image

+ -p => port forwarding
+ -d => Runs in detached mode / in the background
+ --name => sets container name 


### Access container console

    docker exec -it node-app-container bash

+ exec => allows to run command in a running container
+ -it => access through interactive mode


### show running containers

    docker ps

    docker container ls


