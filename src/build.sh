#!/usr/bin/bash
echo "#"
echo "########## Post ##########"
echo "#"
docker build -t $USER/post:1.0 ./post-py
echo "#"
echo "########## Comment ##########"
echo "#"
docker build -t $USER/comment:1.0 ./comment
echo "#"
echo "########## UI ##########"
echo "#"
docker build -t $USER/ui:1.0 ./ui
