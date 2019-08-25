
# macos snd 
# brew install pulseaudio
# brew services start pulseaudio
# brew install socat
# brew cask install xquartz
# pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon

brew services start pulseaudio
pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon


ENV PULSE_SERVER=docker.for.mac.localhost

socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

docker run -it -d --network="host" --restart="always" \
--name "skytune" \
-e PULSE_SERVER=docker.for.mac.localhost -e DISPLAY=docker.for.mac.host.internal:0 \
--stop-signal=SIGRTMIN+3 --cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
--entrypoint "/sbin/init" \
c4pt/skytune
docker exec -it skytune /bin/bash
