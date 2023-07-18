FROM envoyproxy/envoy:v1.22-latest as builder

RUN apt update && \
    apt -qq -y install python && \
    rm -rf /var/lib/apt/lists/*

COPY scripts /etc/envoy

ENTRYPOINT ["/etc/envoy/hot-restarter.py", "/etc/envoy/start_envoy.sh"]
