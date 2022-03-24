![build workflow](https://github.com/takesection/openapi-generator-util/actions/workflows/build.yml/badge.svg)

A reverse proxy for static files on S3
===

```shell
nerdctl run -it --rm --name front-proxy -v `pwd`/front-envoy.yaml:/etc/front-envoy.yaml -p 8080:8080 -p 9901:9901 envoyproxy/envoy:v1.21-latest -c /etc/front-envoy.yaml --service-cluster front-proxy
```

## Building a container image.

```shell
nerdctl build -t front-proxy-s3 .
```

## Usage

```shell
nerdctl run -d --name front-proxy -e BUCKET_NAME=<BUCKET_NAME> -p 8080:8080 -p 9901:9901 front-proxy-s3
```

You can set the Region using the AWS_REGION environment variable.
