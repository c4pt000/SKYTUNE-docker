FROM c4pt/skytune-docker

RUN yum install firefox -y
RUN chmod +x /opt/SKYTUNE.online/launch-server-production-NON-ssl 


CMD /usr/bin/bash
ENTRYPOINT ["/opt/SKYTUNE.online/launch-server-production-NON-ssl"]
