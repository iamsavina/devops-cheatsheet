## Git Setup for SSH authentication

### Generate new key pair

Generate key pair

    ssh-keygen -t ed25519 -C "sample@me.com"

ed25519 is the public key algorithm used

Set path

**/home/savi/.ssh/id_ed25519_github**

### Set it to github

Copy id_ed25519_github.pub file content

Past in it https://github.com/settings/keys -> New SSH Keys

### client setup

Add ssh key to ssh-agent

    eval "$(ssh-agent -s)"

To shut down the agent

    eval "$(ssh-agent -k)"


Add your SSH private key to the ssh-agent

    ssh-add ~/.ssh/id_ed2519_github


