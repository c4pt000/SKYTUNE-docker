# No soundcloud here

* customizable


# * https://skytune.online/#/home

* original source
* https://github.com/Mpompili/vibesky

vibesky, a SoundCloud clone, is a music social media app where users can discover and upload music using a Ruby on Rails backend, Postgresql database, AWS S3 database, and React/Redux front-end architecture. 



# SKYTUNE-docker

<p align="center"><img src="https://i.imgur.com/wepal9D.jpg" width="800"></p>
<br>
scrub jpg to replace or not
<br>
app/assests/javascript/bundle.js
<br>
                  _react2.default.createElement('img', { src: 'https://i1.sndcdn.com/artworks-000319271595-hhwrkq-t200x200.jpg' })
<br>
cover logo
<br>
grep -ri 'hp_image-6155d6b.jpg'
<br>
# requires docker

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

```systemctl status postgresql```
<br>
```systemctl start postgresql```

<br>
<br>
<br>
project is dependent on PID 1 for systemd and pulseaudio on host and guest side , aside from postgresql running as a system 
service via systemctl
<br>

<br>
<br>
* to write changes

docker commit <image_id>





