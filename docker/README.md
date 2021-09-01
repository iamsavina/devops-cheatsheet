

### Give superuser permission to docker

create docker group

    sudo groupadd docker

add user to docker group

    sudo usermod -aG docker $USER

activate changes to the group without logging out

    newgrp docker 


