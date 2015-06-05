#!/bin/bash

RUNNING_COUNT=$(fleetctl list-units | grep octo- | grep -v octo-master | grep running | wc -l)

aws cloudwatch put-metric-data \
  --namespace "Linux System" \
  --metric-name "FlowsRunning" \
  --unit "Count" \
  --value $RUNNING_COUNT
