
```
nerdctl run -it --rm --name envoy -v `pwd`/front-envoy.yaml:/etc/front-envoy.yaml -p 8080:8080 -p 9901:9901 envoyproxy/envoy:v1.21-latest -c /etc/front-envoy.yaml --service-cluster front-proxy
```

```
curl -v http://localhost:8080/

< HTTP/1.1 401 Unauthorized

```

```
curl -H 'Authorization: Bearer <ID Token>' http://localhost:8080/

< HTTP/1.1 200 OK

```

# Resources

* [Envoy Docs](https://www.envoyproxy.io/docs.html)
    * [JWT Authentication](https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/jwt_authn_filter)
