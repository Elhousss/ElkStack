#! /bin/sh
# ---------------
#
#increase map variable value
sudo sysctl -w vm.max_map_count=262144
#
#build elk images
sudo docker-compose up -d
#
# ---------------