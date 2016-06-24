#/bin/bash

build() {
  git pull
  docker build -t mingqianye/frontier:v0.1 -t mingqianye/frontier:latest .
}

run() {
  docker run -d -e VIRTUAL_HOST=moonbbs.us -P mingqianye/frontier:latest
}

docker_push() {
  tag="v0.1"
  docker build -t mingqianye/frontier:${tag} -t mingqianye/frontier:latest .
  docker push mingqianye/frontier:latest
  docker push mingqianye/frontier:latest
}

action=$1
${action}
