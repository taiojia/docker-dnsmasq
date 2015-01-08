# docker-dnsmasq
A docerized dnsmasq. The autobuild Docker Hub repo: jiasir/dnsmasq.

### How to use?
* Clone the code.
```
git clone https://github.com/spops/docker-dnsmasq.git
```
* Edit your dns recode, It is a hosts form.
```
vi banner_add_hosts
```
* Build and Run.
```
docker build -t spops/docker-dnsmasq:0.0.1 .
docker run -d -p 53:53 spops/docker-dnsmasq:0.0.1
```
* Or using Docker Hub.
```
docker run -d -p 53:53 jiasir/dnsmasq
```
* Using another container to change the DNS records and reload the process.
```
docker run -it --volumes-from="your dnsmasq container id" ubuntu:14.04 /bin/bash
docker kill --signal="HUP" "your dnsmasq container id"
```