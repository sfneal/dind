#!/usr/bin/env bash

sudo docker inspect -f '{{.State.Running}}' $(sudo docker ps -aq --format {{.Names}} | grep ${wait_for_container})