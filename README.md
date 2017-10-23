# MyPHP
Docker image based on **webdevops/php-nginx-dev** but adding a little more :-)

It runs *PHP 7.1* as FPM with NGINX embedded.

## Added:
* Ioncube loader
* phpunit
* missing modules: memcached, intl, ldap, wddx, xmlrpc

For additional information, visit: [php-nginx-dev](http://dockerfile.readthedocs.io/en/latest/content/DockerImages/dockerfiles/php-nginx-dev.html)

## Wanted to give a try?

```
docker pull agarzon/myphp
```

## WARNING
Not for production use, only for development environment.
