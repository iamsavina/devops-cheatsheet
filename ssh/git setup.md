## Git Setup for SSH authentication

### Generate new key pair

RSA keypair

    ssh-keygen rsa

DSA keypair (Faster signature generation but slower for validation - Slower when encrypting but faster when decrypting)

    ssh-keygen -t rsa



For more security (RSA keypair)

set path
~/.ssh/rsa_github