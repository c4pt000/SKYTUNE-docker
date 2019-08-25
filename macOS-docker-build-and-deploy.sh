ENV PULSE_SERVER=docker.for.mac.localhost

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

docker run --network="host" -itd --privileged --rm \
-e PULSE_SERVER=docker.for.mac.localhost -e DISPLAY=docker.for.mac.host.internal:0 \
-v /tmp/.X11-unix:/tmp/.X11-unix --entrypoint "/bin/bash" \
c4pt/skytune
