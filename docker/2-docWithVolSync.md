## Docker with volumn sync

This feature sync local directory with the docker container
note: /app is the container directory

Linux:

    docker run -v $(pwd):/app -p .........

Windows

    docker run -v %cd%:/app