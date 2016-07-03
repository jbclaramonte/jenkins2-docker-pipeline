# jenkins2-docker-pipeline

## How to use it
### Start jenkins 
#### Example with docker cli
```
docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock --name jenkins --restart="always" jbclaramonte/jenkins2-docker-pipeline
```

#### Example with docker-compose
Create de docker-compose.yml with the following content:
```
version: "2"

services:

  jenkins:
    container_name: jenkins
    restart: always
    image: jbclaramonte/jenkins2-docker-pipeline
    ports:
     - 8080:8080
    volumes:
     - /var/run/docker.sock:/var/run/docker.sock
```

