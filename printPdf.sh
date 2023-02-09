#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# When updating, also update in Jenkinsfile. Or use this script in Jenkins
PRINTING_IMAGE='arachnysdocker/athenapdf:2.16.0'

pdf=$(mktemp --suffix=.pdf)

image=$(docker build -q . )
container=$(docker run --rm -d "$image")
address=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "${container}")

sleep 1

rm "${pdf}" || true

# When images are not printed, increase --delay
docker run --shm-size=4G ${PRINTING_IMAGE} \
  athenapdf --delay 1000 --stdout "http://${address}:8080/?print-pdf" \
  > "${pdf}"

if [ -t 1 ] ; then
  # When running in terminal
  ls -lah "${pdf}"
  xdg-open "${pdf}"
else
  # For headless use only output path to PDF
  echo "${pdf}"
fi

docker rm -f "${container}" > /dev/null
