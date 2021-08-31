### SSH

## ssh-add | Add private key permanantly

Following error comes because of this error
debug1: No more authentication methods to try.
savi@10.254.10.4: Permission denied (publickey).

create ~/.ssh/config file:

    - IdentityFile ~/.ssh/gitHubKey

chmod 600 ~/.ssh/config

If you want to set key to specific one host:
Host github.com
    User git
    IdentityFile ~/.ssh/githubKey
