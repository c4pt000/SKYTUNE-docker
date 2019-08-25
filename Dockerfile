FROM c4pt/skytune-docker

RUN chmod +x launch-server-production-NON-ssl 


CMD /usr/bin/bash
#ENTRYPOINT ["launch-server-production-NON-ssl"]
