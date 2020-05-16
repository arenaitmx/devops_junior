
all:
    echo IP=$(echo $(hostname -i) |sed "s|\.|-|g" ) > .env
    docker network create app
