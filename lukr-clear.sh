docker rmi $(docker images | grep lukr | awk '{print $3}')
# docker images