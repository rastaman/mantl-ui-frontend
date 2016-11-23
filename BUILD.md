# Build mantl-ui frontend in Docker

## Build

```sh
$ docker build -t mui .
```

## Run

```sh
$ docker run -v `pwd`:/srv/mantl-ui-frontend -t mui
```