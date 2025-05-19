#!/bin/bash

docker compose build
docker compose up -d
docker commit open-webui open-webui_secure:v0.0.0
sudo trivy image --timeout 120m --severity CRITICAL,HIGH open-webui_secure:v0.0.0 > trivy-analysis.txt
