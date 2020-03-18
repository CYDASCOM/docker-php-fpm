#!/bin/bash

set -e

declare -a versions=(
  "7.2-stretch"
  "7.3-alpine"
  "7.3-alpine3.11"
)


for ver in "${versions[@]}"
do
  docker build -t cydascom/php-fpm:$ver -f "$ver/Dockerfile" $ver/.
  docker push cydascom/php-fpm:$ver
done
