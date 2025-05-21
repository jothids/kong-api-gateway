# Deploy Kong API Gateway on TARGET SERVER
This is only for demo/testing purpose only. Therefore no security implementaions have been included.
And this project aligns with https://github.com/jothids/consul-with-ansible/tree/main

## Prerequisites

Make sure docker is installed. Otherwsie follow below.
[INSTALL-DOCKER](https://docs.docker.com/engine/install/rhel/)

# Variables
REGISTRY_HOST: - Replace the value with registry host IP.

For the following in Deploy to EC2 Stage.
Add below secrets in your repo settings.
  EC2_USER - Kong VM login username
  PASSWORD - Kong VM login password
Replace host_ip_for_kong with the server ip where kong needs to be deployed.
```
with:
  host:  <host_ip_for_kong>
  username:  ${{ secrets.EC2_USER }}
  password:  ${{ secrets.PASSWORD }}
```
