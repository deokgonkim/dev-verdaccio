#!/bin/bash

export REPOSITORY_NAME=dev/verdaccio

aws ecr \
create-repository \
--repository-name $REPOSITORY_NAME
