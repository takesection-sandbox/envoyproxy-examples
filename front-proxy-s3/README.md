S3 の静的 Web コンテンツへのリバースプロキシ
===

```
nerdctl run -it --rm --name envoy -v `pwd`/front-envoy.yaml:/etc/front-envoy.yaml -p 8080:8080 -p 9901:9901 envoyproxy/envoy:v1.21-latest -c /etc/front-envoy.yaml --service-cluster front-proxy
```
