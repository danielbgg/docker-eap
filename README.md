EAP 6.4.0 Docker Base Image

Build:
docker build --rm --tag=kerdlix/eap-6.4.0-base .

Run:
docker run -it -p 8080:8080 -p 9990:9990 kerdlix/eap-6.4.0-base

