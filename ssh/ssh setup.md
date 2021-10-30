# Install SSH pub key on server (When password auth enabled)

    ssh-copy-id -i ~/.ssh/[key] [user]@[serverIP]

### Permissions

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys    
sudo chmod 775 ~/