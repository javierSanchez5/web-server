# Challenge Week 4

## **Description**
Using github actions to develop a docker container of a web server and publish it into a public registry

## Dockerhub repository
[Repository](https://hub.docker.com/repository/docker/sanchezsv/webserver)

## Commands

### `Pull image`

`docker pull sanchezsv/webserver`

or 

`docker pull sanchezsv/webserver:[version]`

### `run container`

`docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`

`docker run -d --name webserver --rm -p 80:3000 [image_name]`
