#!/bin/bash
# Copy configuration file to given path
cp "${PARAM_CONFIG}" "${PARAM_PATH}"
echo "Running command: flake8 --config ${PARAM_CONFIG} ""${PARAM_PATH}"""
flake8 --config "${PARAM_CONFIG}" "${PARAM_PATH}" --exit-zero
