# docker-dnsmasq
A docerized dnsmasq.

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