# StreamMachine (Docker Containers)

## Run

### Docker-Compose

The easiest is to use the provider docker-compose file:

    docker-compose up

Otherwise, use the containers you need: `freqout/streammachine-master` and `freqout/streammachine-slave`

### Stream

The provided example uses the /live mountpoint, using the `live` password.

Use something like NiceCast or Airtime to stream to it on port 8000.

Listen to the normal machine's HTTP port (80) (http://localhost/live)

## Build

### Base standalone image

    make streammachine

### Master image

    make streammachine-master

### Slave image

    make streammachine-slave
