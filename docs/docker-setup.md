### setup docker container

```bash
docker network create calculation-microservices-network

docker image build --tag raghugannaram/addition-service:1.0.0 ./

docker container run \
> --detach \
> --name addition-service \
> --publish 5001:5001 \
> --network calculation-microservices-network \
> raghugannaram/addition-service:1.0.0

```

