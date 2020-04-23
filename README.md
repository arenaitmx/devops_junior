## Deploy App

### fill out the .env
```.bash
    echo IP=$(echo $(hostname -i) |sed "s|\.|-|g" ) > .env
```
### build docker-compose files



