# macos snd 
# brew install pulseaudio
# brew services start pulseaudio
# brew install socat
# brew cask install xquartz
# pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon


#brew services start pulseaudio
#pulseaudio --load=module-native-protocol-tcp --exit-idle-time=-1 --daemon


#ENV PULSE_SERVER=docker.for.mac.localhost

#socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\" &

export XDG_RUNTIME_DIR=/run/user/%I && /usr/lib/systemd/systemd --user &


docker run -it -d --network="host" --restart="always" --privileged=true \
--name "skytunedocker" \
--device /dev/snd \
-e DISPLAY=$DISPLAY \
--stop-signal=SIGRTMIN+3 --cap-add=SYS_ADMIN --security-opt=seccomp:unconfined \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
--entrypoint "/sbin/init" \
c4pt/skytune-current

docker exec -it skytunedocker /bin/bash
