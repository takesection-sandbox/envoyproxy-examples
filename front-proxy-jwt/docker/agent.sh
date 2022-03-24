#!/usr/bin/env bash
set -e

if [ ! -n "$COGNITO_REGION" ]; then
  if [ -n "$AWS_REGION" ]; then
    export COGNITO_REGION="$AWS_REGION"
  else
    echo "COGNITO_REGION or AWS_REGION is not defained."
    exit -1
  fi
fi

if [ ! -n "COGNITO_POOLID" ]; then
  echo "COGNITO_POOLID is not defained."
  exit -1
fi

if [ ! -n "$CLIENT_ID" ]; then
  echo "CLIENT_ID is not defained."
  exit -1
fi

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
