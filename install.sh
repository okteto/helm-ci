#!/bin/sh

if test -f .env; then
  echo sourcing: ${PWD}/.env
  source .env
fi

echo executing: helm upgrade staging ./app --install --set foo=$bar

helm upgrade staging ./app --install --set foo=$bar

