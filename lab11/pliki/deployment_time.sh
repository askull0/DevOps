#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

deployment_name=$1

kubectl apply -f "$deployment_name"

check_deployment_status() {
  kubectl rollout status deployment/web-app
}

start_time=$(date +%s)
status=$(check_deployment_status)
echo "$status"
end_time=$(date +%s)


elapsed_time=$((end_time - start_time))


if [[ $status == *"successfully rolled out"* ]]; then
    echo "Deployment is successfully deployed in $elapsed_time s"
fi

