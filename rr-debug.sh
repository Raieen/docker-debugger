#!/usr/bin/env bash

# Kill the previously running delve instance, if applicable. For live reloading.
pkill dlv
sysctl kernel.perf_event_paranoid=1

# Record helloworld execution
go build -o helloworld .
rr record helloworld

# Run the latest trace, recorded above
dlv replay --headless -l=0.0.0.0:2345 --log --api-version=2 /root/.local/share/rr/latest-trace