#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533266979424.dkr.ecr.us-east-1.amazonaws.com
aws ecr create-repository --repository-name planet-facts-service
docker build -t planet-facts-service .
docker tag planet-facts-service:latest 533266979424.dkr.ecr.us-east-1.amazonaws.com/planet-facts-service:latest
docker push 533266979424.dkr.ecr.us-east-1.amazonaws.com/planet-facts-service:latest