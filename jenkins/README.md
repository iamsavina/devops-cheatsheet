# Setup

> Install somehow 🤣

## Change admin password

+ Manage Jenkins > Manage users > Admin
+ Set password
+ Save

## Git auto deploy

+ Install following plugins
    + Manage Jenkins > Plugin Manager > Available
    + Install => Git, Git client, Publish over SSH 
        + If you come across with "Signature verification failed in update site 'default'" error, it occurs from java.security file.
        + To fix it go to following folder
        
            cd $JAVA_HOME/jre/lib/security

        + Change "jdk.certpath.disabledAlgorithms=MD2, MD5, RSA keySize < 1024" to "jdk.certpath.disabledAlgorithms=MD2, RSA keySize < 1024"
        + If it didn't work, you might be using outdated version
    