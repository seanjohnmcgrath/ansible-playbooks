#!/bin/bash
docker run -d -p 8500:8500 --name=consul progrium/consul -server -bootstrap

ssh worker1 docker run -d -p 192.168.113.7:4000:4000 swarm manage -H :4000 --replication --advertise 192.168.113.7:4000 consul://192.168.113.5:8500
ssh worker2 docker run -d -p 192.168.113.8:4000:4000 swarm manage -H :4000 --replication --advertise 192.168.113.8:4000 consul://192.168.113.5:8500

docker run -d swarm join --advertise=192.168.113.5:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.7:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.8:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.9:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.10:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.11:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.12:2375 consul://192.168.113.5:8500
docker run -d swarm join --advertise=192.168.113.13:2375 consul://192.168.113.5:8500


docker -H 192.168.113.7:4000 info

docker -H 192.168.113.7:4000 run hello-world
docker -H 192.168.113.7:4000 ps -a
docker run -d -p 9000:9000 --privileged -v /var/run/docker.sock:/var/run/docker.sock uifd/ui-for-docker
echo "Your Docker Swarm Cluster is up.  Visit the  gui runs as a container at http://192.168.113.5:9000"
