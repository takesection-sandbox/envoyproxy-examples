FROM envoyproxy/envoy:v1.23-latest
COPY front-envoy.yaml /etc/envoy/front-envoy.yaml
EXPOSE 8081
EXPOSE 9901
CMD ["envoy", "-c", "/etc/envoy/front-envoy.yaml", "--service-cluster", "front-proxy", "--service-node", "node"]
