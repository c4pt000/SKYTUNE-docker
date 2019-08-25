#linux dont run as root for pulseaudio, for X11 forwarding via docker check selinux settings or !unsafe lastly setenforce 0 
docker build -t skytune .
docker run -it --rm --cap-add=SYS_ADMIN -e "container=skytune-docker" DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /sys/fs/cgroup:/sys/fs/cgroup c4pt/skytune-docker


