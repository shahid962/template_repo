#!/bin/bash
# Copy configuration file to given path
echo "Running command: mypy --config-file ${PARAM_CONFIG} ""${PARAM_PATH}"""
mypy --config-file "${PARAM_CONFIG}" "${PARAM_PATH}"
