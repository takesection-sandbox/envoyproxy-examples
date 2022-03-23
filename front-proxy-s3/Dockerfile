FROM envoyproxy/envoy:v1.21-latest
COPY docker/front-envoy.tmp /etc/envoy
COPY docker/agent.sh /
EXPOSE 8080
EXPOSE 9901
ENTRYPOINT ["/agent.sh"]
CMD ["envoy", "-c", "/etc/envoy/front-envoy.yaml", "--service-cluster", "front-proxy"]
