#!/bin/bash

IMAGE_NAME='docker-cronjob'

docker build -t $IMAGE_NAME . 

docker run --rm --name $IMAGE_NAME-test -e CRON_URL="http://localhost/cron.php" -e CRON_CONF="* * * * *" -e CURL_OPTS="-i" -it $IMAGE_NAME