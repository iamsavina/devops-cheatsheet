### Set environment variable in Dockerfile
```
FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
ENV PORT 8000
EXPOSE $PORT
CMD ["npm","run","dev"]
```

app.js file should call port as below.

Here PORT 8000 is default port that set.

Create .env file in the directory and set it as below

    PORT=8000

Now, put following command to add it

    docker run -v $(pwd):/app:ro -v /app/node_modules -p --env-file ./.env 8000:8000 -d --name node-app-container node-app-image


