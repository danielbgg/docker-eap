# EAP 6.4.0 Docker Base Image

## Build
```
* cd install
* python -m SimpleHTTPServer
* cd ..
* docker build --add-host foo:172.17.0.1 --rm --tag=kerdlix/eap-6.4.0-base .
```

## Run
```
docker run -it -p 8080:8080 -p 9990:9990 kerdlix/eap-6.4.0-base
```

## Import image
```
docker pull kerdlix/eap-6.4.0-base
```

## Docker Hub
[https://hub.docker.com/r/kerdlix/eap-6.4.0-base](https://hub.docker.com/r/kerdlix/eap-6.4.0-base)

