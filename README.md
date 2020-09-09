# Karate Api Automation OpenWeather

## Usage

Follow the instructions at [Docker Hub](https://hub.docker.com/r/marcellafarias/karate-apiautomation) or:

1. Clone this repository:
```sh
$ git clone https://github.com/marcellafarias/karate-apiautomation-zedelivery.git
```

2. Navigate into the `karateApiAutomation` directory:
```sh
$ cd karateApiAutomation
```

3. Build the docker image:
```sh
$ docker build [OPTIONS] .
```
> e.g. `$ docker build -t marcellafarias/karate-apiautomation .`

4. Create the docker container:
```sh
$ docker create [OPTIONS] IMAGE [ARG...]
```
> e.g. `$ docker create --name karate-tests marcellafarias/karate-apiautomation`  

5. Run the docker container:
```sh
$ docker start [OPTIONS] CONTAINER [CONTAINER...]
```
> e.g. `$ docker start -a karate-tests`

## Employed Technology

|<img alt="Java" src="https://www.vectorlogo.zone/logos/java/java-ar21.svg" width="100">|<img alt="Apache Maven" src="https://upload.wikimedia.org/wikipedia/commons/0/0b/Maven_logo.svg" width="100">|<img alt="Docker" src="https://www.vectorlogo.zone/logos/docker/docker-ar21.svg" width="100">|<img alt="Karate Dsl" src="https://raw.githubusercontent.com/intuit/karate/master/karate-core/src/main/resources/res/karate-logo.svg" width="50">|
|:---:|:---:|:---:|:---:|
