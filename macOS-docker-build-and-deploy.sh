ENV PULSE_SERVER=docker.for.mac.localhost

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

docker run -itd -p 80:80 -p 443:443 -p 8080:8080 --privileged --rm \
-e PULSE_SERVER=docker.for.mac.localhost -e DISPLAY=docker.for.mac.host.internal:0 \
-v /tmp/.X11-unix:/tmp/.X11-unix --entrypoint "/run-server" \
c4pt/skytune
