# Curl cron 

Run curl command periodically using cron  

### Usage

#### Container Parameters

```shell
docker run --rm --name curl-cron -e CRON_URL="http://example.com/cron.php" -e CRON_CONF="* * * * *" -it ghcr.io/r1co/docker-curl-cron:latest
```

Add extra options to curl 

```shell
docker run --rm --name curl-cron -e CRON_URL="http://example.com/cron.php" -e CRON_CONF="* * * * *" -e CURL_OPTS="-i" -it ghcr.io/r1co/docker-curl-cron:latest
```

#### Environment Variables

* `CRON_URL` - Url that should be called periodically
* `CRON_CONF` - Crontab configuration (e.g '* * * * *') 
* `CURL_OPTS` - Some option like `-X POST`

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

