### setup docker container

```bash
docker network create calculation-microservices-network

docker image build --tag raghugannaram/addition-service:1.0.0 ./

docker container run \
> --detach \
> --name addition-service \
> --publish 5001:5001 \
> --network calculation-microservices-network \
> --env LOG_LEVEL=debug \
> raghugannaram/addition-service:1.0.0

```

