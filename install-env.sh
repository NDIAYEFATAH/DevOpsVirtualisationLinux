#!/usr/bin/bash
set -e

apt update -y

apt install -y openjdk-8-jdk openjdk-11-jdk openjdk-17-jdk curl wget unzip

java -version
