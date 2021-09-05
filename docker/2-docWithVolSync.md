Note: This bind mount is only used in development.

## Docker with volumn sync | Bind mount

This feature sync local directory with the docker container
note: /app is the container directory

Linux:

    docker run -v $(pwd):/app -p .........

Windows

    docker run -v %cd%:/app

## Ignore

add files you don't want to add to the docker to .dockerignore file


### Run first example container with volume sync

    docker run -v $(pwd):/app -p 8000:8000 -d --name node-app-container node-app-image


### auto apply updates (nodemon)

Insall nodemon and set it to run when 'npm run dev' is typed.
Then, add Dockerfile as below

```
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
EXPOSE 8000
CMD ["npm","run","dev"]
```

now run it:

    docker run -v $(pwd):/app:ro -v /app/node_modules -p 8000:8000 -d --name node-app-container node-app-image

+ Use of second -v flag ensures that even though root folder is synced, node_modules folder in the container remain untouched
This helps to workaround the error of root folder deleting container node_modules folder when syncing.

+ "/app:ro" will make sure container file is only read only. so it can't make changes to root folder


