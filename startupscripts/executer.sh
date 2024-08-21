#!/bin/bash

for f in ~/startup_scripts/*.sh; do
  echo "$f"
  echo "running"
  if [[ "$f" == "/home/test/startup_scripts/executer.sh" ]]; then
    echo "not running self"
  else
    bash "$f" 
  fi
 # sleep 2
done
