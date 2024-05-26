### setup docker container

```bash
docker network create calculation-microservices-network

docker image build --tag raghugannaram/addition-service:1.0.0 ./

docker container run \
> --detach \
> --name addition-service \
> --publish 9001:9001 \
> --network calculation-microservices-network \
> --env LOG_LEVEL=debug \
> --mount type=bind,source="$(pwd)/Docker/logs",target=/app/logs \
> raghugannaram/addition-service:1.0.0

```

