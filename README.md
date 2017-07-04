# EAP 6.4.0 Docker Base Image

## Requirements
```
* EAP 6.4.0 installer (jboss-eap-6.4.0.zip)
```

## Build
```
* cd <EAP_INSTALL_FOLDER>
* python -m SimpleHTTPServer
* cd <THIS_PROJECT>
* docker build --add-host foo:172.17.0.1 --rm --tag=kerdlix/docker-eap-6.4:6.4.0 .
```

## Run
```
docker run -it -p 8080:8080 -p 9990:9990 kerdlix/docker-eap-6.4:6.4.0
```

## Import image
```
docker pull kerdlix/docker-eap-6.4:6.4.0
```

