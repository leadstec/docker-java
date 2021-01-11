# Java image for VCubi Platform

![Version](https://img.shields.io/badge/Java-11.0.9,_8.252.09-blue)
![Arch](https://img.shields.io/badge/Arch-amd64,_arm64-blue)
![Workflow](https://github.com/leadstec/docker-alpine/workflows/ci/badge.svg)

The project contains Java image for VCubi platform, implements LCS (Leadstec Container Schema) for easy management of recovery, migration, update, etc.

Image on [DockerHub](https://hub.docker.com/r/leadstec/java)

LEADSTEC: [Official website](https://www.leadstec.com)

## How to Use
    # Pull image
    docker pull leadstec/java:[tag]

    # Build image
    docker-compose build .      # for java11
    docker-compose build java8  # for java8

    # Image Structure Test
    container-structure-test test --image leadstec/java:tag --config tests/java.yaml

## LCS Schema & ENV

| ENV Variable              | Description               | Default | Accept Values |
|---------------------------|---------------------------|---------|---------------|
|  |                       |    |               |
