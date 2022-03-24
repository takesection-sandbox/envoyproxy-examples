![build workflow](https://github.com/takesection/openapi-generator-util/actions/workflows/build.yml/badge.svg)

## Run

```shell
nerdctl run -it --rm --name envoy -v `pwd`/front-envoy.yaml:/etc/front-envoy.yaml -p 8080:8080 -p 9901:9901 envoyproxy/envoy:v1.21-latest -c /etc/front-envoy.yaml --service-cluster front-proxy
```

## Container

Environments

| key            | required/option | descriptions                          |
|----------------|-----------------|---------------------------------------|
| COGNITO_REGION | required        | A Region for your Cognito user pools  | 
| COGNITO_POOLID | required        | A pool id for your Cognito user pools | 
| CLIENT_ID      | required        | A client id for your Cognito user pools |
| BUCKET_NAME    | required        | A s3 bucket name                      |
| AWS_REGION     | option          | A Region for s3 bucket                | 

```shell
nerdctl run -d -p 8080:8080 -p 9901:9901 -e COGNITO_REGION=<COGNITO REGION> -e COGNITO_POOLID=<COGNITO POOL ID> -e CLIENT_ID=<CLIENT ID> -e BUCKET_NAME=<BUCKET NAME> front-proxy-jwt bash
```

```shell
curl -s http://localhost:9901/config_dump
```

```shell
curl -v http://localhost:8080/

< HTTP/1.1 401 Unauthorized

```

```shell
curl -H 'Authorization: Bearer <ID Token>' http://localhost:8080/

< HTTP/1.1 200 OK

```

## Resources

* [Envoy Docs](https://www.envoyproxy.io/docs.html)
    * [JWT Authentication](https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/jwt_authn_filter)
