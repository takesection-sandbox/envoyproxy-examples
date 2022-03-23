#!/usr/bin/env bash
set -e

if [ -n "$BUCKET_NAME" ]; then
  eval "cat <<< \"$(cat /etc/envoy/front-envoy.tmp)\"" > /etc/envoy/front-envoy.yaml
else
  echo "BUCKET_NAME is not defined."
  exit -1
fi

exec /docker-entrypoint.sh "${@}"
