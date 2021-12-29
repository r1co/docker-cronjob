FROM alpine

# install curl 
RUN apk --no-cache add curl

# add run script 
ADD run.sh /bin/run.sh
RUN chmod +x /bin/run.sh

CMD /bin/run.sh