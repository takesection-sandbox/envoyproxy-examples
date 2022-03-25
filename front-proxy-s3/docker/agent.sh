#!/usr/bin/env bash
set -e

printenv

if [ -n "$BUCKET_NAME" ]; then
  if [ -n "$AWS_REGION" ]; then
    export BUCKET_URL="$BUCKET_NAME.s3.$AWS_REGION.amazonaws.com"
  else
    export BUCKET_URL="$BUCKET_NAME.s3.amazonaws.com"
  fi
  eval "cat <<< \"$(cat /etc/envoy/front-envoy.tmp)\"" > /etc/envoy/front-envoy.yaml
else
  echo "BUCKET_NAME is not defined."
  exit -1
fi

exec /docker-entrypoint.sh "${@}"
