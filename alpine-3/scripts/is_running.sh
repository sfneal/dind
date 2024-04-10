#!/usr/bin/env bash

current_container=${1}

sudo docker inspect -f '{{.State.Running}}' $(sudo docker ps -a --format "table {{.Names}}" | grep ${current_container})