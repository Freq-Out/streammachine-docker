# StreamMachine (Docker Containers)

[![Circle CI](https://circleci.com/gh/Freq-Out/streammachine-docker.svg?style=shield)](https://circleci.com/gh/Freq-Out/streammachine-docker)

## Run

### Docker-Compose

The easiest is to use the provider docker-compose file:

    docker-compose up

Otherwise, use the containers you need: `freqout/streammachine-master` and `freqout/streammachine-slave`

### Stream

The provided example uses the /live mountpoint, using the `live` password.

Use something like NiceCast or Airtime to stream to it on port 8000.

Listen to the normal machine's HTTP port (80) (http://localhost/live). Use the rewind buffer to listen to `300` seconds behind: http://localhost/live?offset=300

## Build

### Base standalone image

    make streammachine

### Master image

    make streammachine-master

### Slave image

    make streammachine-slave
