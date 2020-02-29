# Container to run helm upgrades in CI

This container includes git, git-lfs, helm, docker and docker-compose.

Take a look at the `.env` and `install.sh` files to see how to use environment variables when upgrading a helm-managed deployment.

> If using this image in a CI worker, `install.sh` would be your job script.

To run locally:
```
 $ docker run -it -v $PWD:/app ramiro/helm-ci:0.1 sh install.sh
```
```
sourcing: /app/.env
executing: helm upgrade test ./app --install --set foo=1
Error: path "./app" not found
```

# Build

To build the image with a different alpine base image and tag:

```
docker build --build-arg IMAGE=alpine --build-arg=TAG=3 -t helm-ci:dev .
```

For docker-compose:
```
docker-compose build --build-arg IMAGE=alpine --build-arg TAG=latest
```

Both tags are optional, and will default to `alpine` and `latest`.