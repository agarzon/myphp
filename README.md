# MyPHP
Docker image based on **webdevops/php-nginx-dev** but adding a little more :-)

It runs *PHP 7.1 and 7.2* as FPM with NGINX embedded.

## Added:
* Ioncube loader
* phpunit
* missing modules: memcached

For additional information, visit: [php-nginx-dev](http://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/php-nginx-dev.html)

## Willing to give a try?

```
docker pull agarzon/myphp
```

## WARNING
Only for development environment. Do not use it in production.
