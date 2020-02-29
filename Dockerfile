ARG TAG=latest
ARG IMAGE=alpine

FROM ${IMAGE}:${TAG}

RUN apk add --update --no-cache curl ca-certificates git git-lfs less openssh docker py-pip python-dev libffi-dev openssl-dev gcc libc-dev make \
  &&  curl -L https://get.helm.sh/helm-v3.1.1-linux-amd64.tar.gz |tar xvz \
  &&  mv linux-amd64/helm /usr/bin/helm \
  && chmod +x /usr/bin/helm \
  && rm -rf linux-amd64  \
  && pip install docker-compose==1.25.0 \
  && apk del gcc musl-dev libc-dev make \
  && rm -f /var/cache/apk/*

WORKDIR /app
