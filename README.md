# docker-dnsmasq
A docerized dnsmasq. 
### How to use?
* Clone the code.
```
git clone https://github.com/jiasir/docker-dnsmasq.git
```
* Edit your dns record, It is a hosts form.
```
vi banner_add_hosts
```
* Build and Run.
```
docker build -t jiasir/docker-dnsmasq:0.0.1 .
docker run -d -p 53:53 -p 53:53/udp jiasir/docker-dnsmasq:0.0.1
```
* Or using Docker Hub.
```
docker run -d -p 53:53 -p 53:53/udp jiasir/dnsmasq
```
* Using another container to change the DNS records and reload the process.
```
docker run -it --volumes-from="your dnsmasq container id" ubuntu:14.04 /bin/bash
docker kill --signal="HUP" "your dnsmasq container id"
```
