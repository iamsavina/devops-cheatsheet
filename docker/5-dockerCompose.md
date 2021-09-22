## Intro

Docker compose automates the process of building a container.


### How to

create file named "docker-compose.yml"

Yml is whitespace senstive.

sample site looks like this:

```
version: "3"
services:
    node-app:
        build: .
        ports:
            - "8000:8000"
        volumes:
            - ./:/app
            - /app/node_modules
        environment:
            - PORT=8000
        #env_file:
        #    - ./.env
```

Note: here we don't have to set absolute path when stating volumes