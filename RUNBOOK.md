## Deploy App

### Fill out the .env
```.bash
    echo IP=$(echo $(hostname -i) |sed "s|\.|-|g" ) > .env
```
### Create docker network
```.bash
    docker network create app
```

### Build docker-compose files
```.bash
    docker-compose up -d
```
### Build ci file
```.bash
    docker-compose -f docker-compose-ci.yml up -d
```
