#!/bin/bash

deployment_name="web-app"
time=60

check_deployment_status() {
  kubectl rollout status deployment/$deployment_name 
}

start_time=$(date +%s)
status=$(check_deployment_status)
end_time=$(date +%s)


elapsed_time=$((end_time - start_time))


if [[ $status == *"successfully rolled out"* ]]; then
   
    if [ $elapsed_time -ge $time ]; then
        echo "Upłyneło 60 s"
        exit 1
    else
        echo " Wdrozenie ukonczone przed czasem."
        exit 0
    fi
fi
