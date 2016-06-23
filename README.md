How to build and publish a docker image:
  sudo ./script.sh build
  sudo ./script.sh docker_push

How to run the container:
  sudo ./script.sh run

How to get a bash in a running container:
  sudo docker exec -it $container_id bash -l
