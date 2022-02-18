```
nerdctl compose up
```

```
curl -v http://localhost:8080/index.html

< HTTP/1.1 401 Unauthorized

```

```
curl -v -H 'Authorization: Bearer <ID TOKEN>' http://localhost:8080/

< HTTP/1.1 403 Forbidden

```


```
curl -v -H 'Authorization: Bearer <ID TOKEN>' http://localhost:8080/index.html

< HTTP/1.1 200 OK

```

# Resources

* [Envoy Docs](https://www.envoyproxy.io/docs.html)
    * [JWT Authentication](https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/jwt_authn_filter)
    * [External Authorization](https://www.envoyproxy.io/docs/envoy/latest/intro/arch_overview/security/ext_authz_filter.html)
* [Open Policy Agent Docs](https://www.openpolicyagent.org/docs/latest/policy-reference/)
    * [ENVOY](https://www.openpolicyagent.org/docs/latest/envoy-introduction/)

