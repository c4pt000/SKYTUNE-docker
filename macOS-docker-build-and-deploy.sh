ENV PULSE_SERVER=docker.for.mac.localhost

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

docker run -it -d --network="host" --restart="always" \
-e PULSE_SERVER=docker.for.mac.localhost -e DISPLAY=docker.for.mac.host.internal:0 \
--stop-signal=SIGRTMIN+3 --cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
--entrypoint "/sbin/init" \
c4pt/skytune-current 


echo "docker exec -it <image-id> /bin/bash"
