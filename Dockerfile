FROM alpine

RUN apk add --update --no-cache curl ca-certificates git git-lfs less openssh && \
  curl -L https://get.helm.sh/helm-v3.1.1-linux-amd64.tar.gz |tar xvz &&  \
  mv linux-amd64/helm /usr/bin/helm && \
  chmod +x /usr/bin/helm && \
  rm -rf linux-amd64 && \
  apk del curl && \
  rm -f /var/cache/apk/*

WORKDIR /app


