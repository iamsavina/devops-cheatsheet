# Git Setup for SSH authentication

Structure
- Generate new key pair
- Set public key to github
- ssh-agent setup
- ssh-agent bash command shortcut
- [Convert HTTPS Github clones to use SSHGithub to SSH](#git_to_ssh)


### Generate new key pair

Generate key pair

    ssh-keygen -t ed25519 -C "sample@me.com"

ed25519 is the public key algorithm used

When running the command in prompt you should set key path. 
as an example, **/home/savi/.ssh/id_ed25519_github**
<br>
### Set Public key to github

Copy id_ed25519_github.pub file content

Past in it https://github.com/settings/keys -> New SSH Keys

### Agent setup

Add ssh key to ssh-agent

    eval "$(ssh-agent -s)"

To shut down the agent (if needed)

    eval "$(ssh-agent -k)"


Add your SSH private key to the ssh-agent

    ssh-add ~/.ssh/id_ed2519_github


**Why we need an ssh-agent?**
ssh-agent is a program that runs in the background and keeps your key loaded into main memory (RAM), so that you don't need to enter your passphrase every time you need to use the key. 


### Setup agent automatically 

add following command to ~/.bashrc file at the end of the file

    alias gitssh="eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed2519_github"

Now type source ~/.bashrc to reload new configurations

Then, in the terminal type following command to execute new config

    alias gitssh="eval '$(ssh-agent -s)' && ssh-add ~/.ssh/id_ed2519_github"

Now you can type **gitssh** in terminal to run both commands at the same time



## <a name="git_to_ssh"></a> Convert HTTPS Github clones to use SSH

Open .git/config file -> in [remote "origin"] change url variable from 
    url = https://github.com/[username]/[repo name].git
    to

    url = git@github.com:[username]/[repo name].git

