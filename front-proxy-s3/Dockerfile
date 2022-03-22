FROM envoyproxy/envoy:v1.21-latest
COPY front-envoy.yaml /etc
EXPOSE 8080
EXPOSE 9901
CMD ["envoy", "-c", "/etc/front-envoy.yaml", "--service-cluster", "front-proxy"]
