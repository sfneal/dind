#!/usr/bin/env bash

current_container=${1}

sudo docker ps -a --format "table {{.Names}}" | grep ${current_container}