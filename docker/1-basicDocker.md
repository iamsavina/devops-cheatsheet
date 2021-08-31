
### Setting Image

In 'Dockerfile' of working directory, add these

```
FROM node:15
WORKDIR /app
COPY package.json
RUN npm install
COPY . ./
EXPOSE 8000
CMD ["node","index.js"]
```
+ WORKDIR is the working directory within the container
+ COPY package.json copies that files to the container - addeding it seprately because it will cache after
+ run npm insall will install all the dependencies
+ COPY - first dot is "this" directory and './' is the /app directory in the container
+ EXPOSE 8000 is the port which app is running
