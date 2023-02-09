#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

BASEDIR="$(dirname "$0")"
ABSOLUTE_BASEDIR="$( cd "$BASEDIR" && pwd )"
  
# When updating, also update in Jenkinsfile. Or use this script in Jenkins
PRINTING_IMAGE='arachnysdocker/athenapdf:2.16.0'

# Printing from NGINX based non-dev image would be easier to script (and faster on CI) but results in
# cloudogu/reveal.js-docker#8. So use dev image 🤷‍♂️
container=$("$ABSOLUTE_BASEDIR/startPresentation.sh" internal)

address=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "${container}")
pdf=$(mktemp --suffix=.pdf)

sleep 1

rm "${pdf}" || true

# When images are not printed, increase --delay
docker run --shm-size=4G ${PRINTING_IMAGE} \
  athenapdf --delay 1000 --stdout "http://${address}:8000/?print-pdf" \
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
