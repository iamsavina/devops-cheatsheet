### Intro

when creating and deleting containers, volums remains the same (if didn't delete it forcefully). To view avaiable volumes type:

    docker volume ls 


## Deleting container with the volumn

Only do this only for the containers that doesn't need to save volume

    docker rm node-app-container -fv

v - make sure volume also gets deleted


## Deleting unused volumes

    docker volume prune