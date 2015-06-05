#!/bin/bash

docker build -t octoblu/cloudwatch-report-fleetctl:devel . && \
  fleetctl destroy cloudwatch-report-fleetctl.service && \
  fleetctl start ./cloudwatch-report-fleetctl.service && \
  fleetctl journal -lines=0 -f cloudwatch-report-fleetctl.service
