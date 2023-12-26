#!/bin/bash
echo "Running command: flake8 --config ${PARAM_CONFIG} ""${PARAM_PATH}"""
flake8 --config "${PARAM_CONFIG}" "${PARAM_PATH}" --exit-zero
