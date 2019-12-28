#!/bin/sh

ruby scripts/setup_host_path.rb
chown root:docker /var/run/docker.sock 2>/dev/null
docker swarm init 2>/dev/null
docker-compose build
docker stack deploy --compose-file docker-compose.yml rubydoc
