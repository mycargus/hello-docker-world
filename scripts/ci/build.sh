#!/usr/bin/env bash

set -ev

function cleanup()
{
  exit_code=$?

  echo ":: Cleaning up"

  docker-compose kill
  docker-compose rm -fv

  if [[ "${exit_code}" == "0" ]]; then
    echo ":: It's working!"
  else
    echo ":: Build Failed :("
  fi

  exit ${exit_code}
}

trap cleanup INT TERM EXIT

docker-compose build
docker-compose up -d web

docker-compose up testrunner
