# Docker Containers to run ELK with ElastAlert

This will setup ELK cluster and ElastAlert

## Features

This image provides you below features:-
- [X] **Lightweight nature:-** Images are quite low in terms of size which will improve your deployment process time.
- [X] **Security Compliant:-** Images are security compliant i.e. It doesn't hold any vulnerable package.
- [X] **Best Practices:-** We have tried to follow the best practices for writing the Docker images.

## Pre-requisites

Here are the list of pre-requisites which is required for development and setup purpose.

- **Docker Engine**
- **Docker Compose**

That's it

## Building Image

#### MongoDB Docker Image

```shell
make build-mongo-image
```

## Running Setup

#### For standalone server

```shell
make setup-standalone-server-compose
```

#### For cluster setup

```shell
make setup-cluster-compose
```

### Replication Set
- need keyfile to authencate the docker container
    https://docs.mongodb.com/manual/tutorial/deploy-replica-set-with-keyfile-access-control/
- Update the mongo-key/mongo-keyfile file with your authentication key and rebuld the docker image
