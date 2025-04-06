#!/bin/bash

if [ "$(docker ps -aq)" ]; then
  echo "Zatrzymywanie i usuwanie wszystkich kontenerów Docker..."
  docker stop $(docker ps -aq) && docker rm -f $(docker ps -aq)
fi

if [ "$(docker images -q)" ]; then
  echo "Usuwanie wszystkich obrazów Docker..."
  docker rmi -f $(docker images -q)
fi

echo "konetenery:"
docker ps -a
echo "obrazy:"
docker images