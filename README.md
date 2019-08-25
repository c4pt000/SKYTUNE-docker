# SKYTUNE-docker


# ** WIP

```git clone https://github.com/c4pt000/SKYTUNE-docker```
<br>
```cd SKYTUNE-docker```
<br>
```sh docker-build-deploy.sh```
<br>

browser will auto-load,
<br>
to mount a music folder to the docker instance add a mountable volume via -v
<br>
```-v /home/user/Music:/music \ ```
<br>
where "/home/user/Music" is your Music folder


<br>
<br>
<br>
project is dependent on PID 1 for systemd and pulseaudio on host and guest side , aside from postgresql running as a system 
service via systemctl
```systemctl status postgresql```
<br>
```systemctl start postgresql```
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

docker run -ti --cap-add=SYS_ADMIN -e "container=fedora30" -v /sys/fs/cgroup:/sys/fs/cgroup fedora /usr/sbin/init 
docker exec -it container-name-here /bin/bash


check ssl-cert-creation.txt 
server.cert -> fullchain1.pem server.key -> privkey1.pem 

replace with your SSL cert per DNS for server.key, server.cert, -> ip specific 
thin start -a 0.0.0.0 -p 443 --ssl --ssl-key-file server.key --ssl-cert-file server.cert -e production

