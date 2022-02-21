#!/usr/bin/bash

docker network create reddit --subnet="172.16.0.0/16"
docker volume create reddit_db
docker run -d --rm --network=reddit --name=db --network-alias=post_db \
    --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run -d --rm --network=reddit --name=post --network-alias=post $USER/post:1.0
docker run -d --rm --network=reddit --name=comment --network-alias=comment $USER/comment:1.0
docker run -d --rm --network=reddit --name=ui -p 9292:9292 $USER/ui:1.0
echo "########## http://localhost:9292 ########## "
