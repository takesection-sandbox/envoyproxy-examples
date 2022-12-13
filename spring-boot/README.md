
```shell
mvn spring-boot:build-image
helm install spring-boot-demo ./spring-boot-demo
```

Port Forward を設定して、

```shell
curl http://localhost:[PORT]
curl http://localhost:[PORT]/ja
```