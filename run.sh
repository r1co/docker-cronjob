#!/bin/sh
FILE=/crontab.txt

# check required variable 'CRON_URL'
if [[ -z "${CRON_URL}" ]]; then
  echo "\$CRON_URL cannot be empty!"
  exit 1
fi

# check required variable 'CRON_CONF'
if [[ -z "${CRON_CONF}" ]]; then
  echo "\$CRON_CONF cannot be empty!"
  exit 1
fi

# build curl command, custom options can be used by CURL_OPTS env variable 
CRONCMD="/usr/bin/curl $CURL_OPTS $CRON_URL"
CRONTAB="$CRON_CONF $CRONCMD"

# write crontab.txt 
echo "$CRONTAB" > /crontab.txt

if [ -f "$FILE" ]; then
    echo "Loading crontab from $FILE."
    /usr/bin/crontab $FILE
# else 
#     echo "$FILE does not exist."
fi

# start crond
/usr/sbin/crond -f -l 8