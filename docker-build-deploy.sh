#linux dont run as root for pulseaudio, for X11 forwarding via docker check selinux settings or !unsafe lastly setenforce 0 
docker build -t skytune .
    
docker run \
--rm \ 
--cap-add=SYS_ADMIN \
--name skytune \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /sys/fs/cgroup:/sys/fs/cgroup \
-it \
--entrypoint "/opt/SKYTUNE.online/launch-http-NOSSL-firefox-local.sh" \
skytune



