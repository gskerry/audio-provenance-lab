#!/bin/bash

docker run \
-v $DockerHostShareDir:/data \
--rm \
-i audiowmark \
gen-key \
--name "Indie Label Inc, 2024" \
2024-ILI.key \