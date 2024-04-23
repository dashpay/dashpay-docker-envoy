FROM envoyproxy/envoy:v1.30.1

RUN apt update && \
    apt -qq -y install python3 && \
    rm -rf /var/lib/apt/lists/*

COPY scripts /etc/envoy

ENTRYPOINT ["/etc/envoy/hot-restarter.py", "/etc/envoy/start_envoy.sh"]
