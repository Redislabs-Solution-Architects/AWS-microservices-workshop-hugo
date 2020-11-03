---
menuTitle: "Example Application"
weight: 10
---

### Installing the Example Application
Execute the following to clone and build the example application:

```sh
git clone https://github.com/redis-developer/redis-microservices-demo &&
cd redis-microservices-demo &&
mvn clean package
```

### Running the example application
Each time you want to run the example application execute the following in the `redis-microservices-demo` directory:

```sh
docker-compose up
```

This will start up many services running on the docker network `redis-microservices-demo_redis-microservices-network`; the one we're most interested in is the Redis service, `redis-service`, which exposes port 6379 on localhost. 

