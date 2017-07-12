# EAP 7.0.6 Docker Base Image

## Requirements
```
* EAP 7.0.0 installer (jboss-eap-7.0.0.zip)
* EAP 7.0.6 Patch (jboss-eap-7.0.6-patch.zip)
```

## Build
```
* cd <EAP_INSTALL_FOLDER>
* python -m SimpleHTTPServer
* cd <THIS_PROJECT>
* docker build --add-host foo:172.17.0.1 --rm --tag=kerdlix/docker-eap:7.0.6 .
```

## Run
```
docker run -it -p 8080:8080 -p 9990:9990 kerdlix/docker-eap:7.0.6
```

## Import image
```
docker pull kerdlix/docker-eap:7.0.6
```

