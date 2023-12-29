#!/bin/bash
echo "Generating pip.conf file..."
mkdir -p /home/circleci/.config/pip
echo "[global]" > /home/circleci/.config/pip/pip.conf
echo "index-url = https://${PARAM_USERNAME}:${PARAM_PASSWORD}@fluence.jfrog.io/artifactory/api/pypi/fluence-pypi/simple" >> /home/circleci/.config/pip/pip.conf
echo "Read pip.conf file"
cat /home/circleci/.config/pip/pip.conf
