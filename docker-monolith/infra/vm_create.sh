#!/bin/bash

yc compute instance create \
  --name monolith \
  --hostname monolith \
  --cores=2 \
  --core-fraction 20 \
  --memory=2 \
  --platform=standard-v3 \
  --preemptible \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-2004-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub \
  --labels tags=monolith

# yc compute instance delete --name monolith
