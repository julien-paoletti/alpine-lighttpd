# alpine-lighttpd
An alpine OS based docker container that runs lighttpd web server

# Build container image

```shell
docker build -t jpao/lighttpd:latest .
```

# Start container

```shell
docker run -d -p 3000:3000 --name web-static jpao/lighttpd:latest
docker logs web-static
```

# Stop container

```shell
docker stop web-static
```
