# docker ps -a | grep "Exited" | awk '{print $1 }'|xargs docker stop
docker stop $(docker ps -a -f "status=exited" -q)
# docker ps -a | grep "Exited" | awk '{print $1 }'|xargs docker rm
docker rm $(docker ps -a -f "status=exited" -q)
docker images|grep none|awk '{print $3 }'|xargs docker rmi
# docker images