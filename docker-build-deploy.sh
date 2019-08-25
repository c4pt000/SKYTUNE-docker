#linux dont run as root for pulseaudio, for X11 forwarding via docker check selinux settings or !unsafe lastly setenforce 0 
docker build -t skytune .
    
docker run --network="host" -it --restart="always" \
-e PULSE_SERVER=docker.for.mac.localhost -e DISPLAY=docker.for.mac.host.internal:0 \
--stop-signal=SIGRTMIN+3 --cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
--entrypoint "/bin/bash" \
c4pt/skytune-current


