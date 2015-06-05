#!/bin/bash

RUNNING_COUNT=$(fleetctl list-units | grep octo- | grep -v octo-master | wc -l)

aws cloudwatch put-metric-data \
  --namespace "Linux System" \
  --metric-name "FlowsRunning" \
  --unit "Count" \
  --value $RUNNING_COUNT
