# Java image for VCubi Platform

![Java15](https://img.shields.io/badge/Java-15.0.0,_latest-blue)
![Java11](https://img.shields.io/badge/Java-11.0.8-blue)
![Java8](https://img.shields.io/badge/Java-8.252.09-blue)
![x86_64](https://img.shields.io/badge/x86_64-supported-brightgreen)
![aarch64](https://img.shields.io/badge/aarch64-supported-brightgreen)

## How to Use

### Pull image
    # from Docker Hub
    docker pull leadstec/java:[tag]
    docker pull leadstec/java-aarch64:[tag]
    # from Tencent CR
    docker pull leadstec.tencentcloudcr.com/leadstec/java:[tag]
    docker pull leadstec.tencentcloudcr.com/leadstec/java-aarch64:[tag]

### Build image
    docker-compose build java15
    docker-compose build java11
    docker-compose build java8

### LCS Schema & ENV

| ENV Variable              | Description               | Default | Accept Values |
|---------------------------|---------------------------|---------|---------------|
|  |                       |    |               |

## Image Structure Test
    container-structure-test test --image leadstec/redis:tag --config tests/redis.yaml

## Special glibc version for java13

Which 13.33 is glibc supported for special usage, the image size is much bigger than others.

## CHANGELOG

**2020/10/03**
* Update: Java 15.0.0, 11.0.8, 8.252.09

**2020/01/12**
* Update - JRE 11.0.4, 10.0.2, 9.0.4
* Info - Based on Alpine 3.11.2

**8u181**
* 更新2018年10月25日
* update alpine to 3.8

**2018年5月18日**
* 支持aarch64架构

**8u151**
* 更新2018年3月15日
* update alpine to 3.7

**8u131**
* 基于alpine 3.6（LCS 1.5.1）

**8u121**

* 迁移到cangku.cloud
* Production Release

**8u111**

* 基于alpine 3.5（LCS 1.4）

**8u92**

* 支持LCS 1.2.0
* 改用openjdk8，不用Orcale JAVA

**8u91**

* 支持Image Schema
* 支持LCS Tools
* 升级glibc到2.23-r1

**8u51**

* Production Ready
* 支持captool机制
