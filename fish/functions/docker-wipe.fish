function docker-wipe
  docker rm (docker ps -a -q)
  docker rmi -f (docker images -q)
  docker system prune -a -f
end
