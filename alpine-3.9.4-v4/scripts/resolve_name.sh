#!/usr/bin/env bash

current_container=${1}

sudo docker ps -aq --format {{.Names}} | grep ${current_container}