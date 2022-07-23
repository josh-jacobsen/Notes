# SSH

Login to remote machine with SSH key: `ssh -i ~/.ssh/key_name root@x.x.x.x`

Create a new user: `adduser newuser`

Add new user to `sudo` group: `usermod -aG sudo newuser`

```
scp -i ../../Users/Josh.Jacobsen/.ssh/circle8 docker-compose.prod.yml josh@159.203.126.78:/home/josh
docker-compose.prod.yml 
```

Starting SSH agent in Git Bash 
```
eval $(ssh-agent -s)
```

Load SSH key
```
ssh-add ~/.ssh/<keyName>
```
