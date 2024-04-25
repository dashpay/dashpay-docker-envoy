#!/bin/bash

exec envoy -c /etc/envoy/envoy.yaml --restart-epoch "$RESTART_EPOCH" --log-level "${LOG_LEVEL:-info}"
