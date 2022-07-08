
```shell
kubectl create secret generic aws-credentials --from-literal=aws_access_key_id=<AWS_ACCESS_KEY_ID> --from-literal=aws_secret_access_key=<AWS_SECRET_ACCESS_KEY>
```

```shell
kubectl create configmap proxy-config --from-file front-envoy.yaml
```

```shell
kubectl apply -f deployment.yaml
```

```shell
kubectl apply -f service.yaml
```

```shell
kubectl apply -f ingress.yaml
```
