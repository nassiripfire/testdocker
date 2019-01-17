#/bin/bash
#Author: Sahabuddin Mistry
#mail: systemadmin@webskitters.com
#this is run time script to run ipfire docker in boottime or after restart


docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker build -t wtsipfire:latest1 /home/webskitters/docker/wtsipfire/.
docker run -itd --net host wtsipfire:latest1 sh
