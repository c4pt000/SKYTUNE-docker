# SKYTUNE-docker


# ** WIP

docker run -ti --cap-add=SYS_ADMIN -e "container=fedora30" -v /sys/fs/cgroup:/sys/fs/cgroup fedora /usr/sbin/init 
docker exec -it container-name-here /bin/bash


check ssl-cert-creation.txt 
server.cert -> fullchain1.pem server.key -> privkey1.pem 

replace with your SSL cert per DNS for server.key, server.cert, -> ip specific 
thin start -a 0.0.0.0 -p 443 --ssl --ssl-key-file server.key --ssl-cert-file server.cert -e production

