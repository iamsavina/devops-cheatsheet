Sample IP => 45.45.45.45
ssh root@45.45.45.45

ssh -f -N -D 1080 root@45.45.45.45

-f = background
-N = don't execute parciulate command
-D = bind address


kill background ssh
    pkill ssh
        or
    kill -9 [processId]
    (ps aux | grep ssh => check process id)

Send through ssh 
    curl --max-time 3 -x socks5h://127.0.0.1:1080 https://google.com


Windows -> Internet Options -> Connections -> LAN settings -> Use proxy server for LAN -> set socks

check what is my ip

## Change port of SSH in SSH server

sudo iptables -t nat -I PREROUTING -p tcp --dport 4444 -j REDIRECT --to-ports 22

client
ssh -f -N -D 1080 root@45.45.45.45 -p 4444

<b> THIS CHANGES SOURCE PORT 1080 </b>

### ZOOM
server
sudo iptables -t nat -I PREROUTING -p tcp --dport 8801 -j REDIRECT --to-ports 22

client
ssh -f -N -D 1080 root@45.45.45.45 -p 8801

## Testing connections

server
sudo nc -l 2222

client 
nc [serverIP] 2222
> type something



