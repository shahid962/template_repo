#!/bin/bash

echo "Installing pip packages..."
# Adding a blank line
echo
pip install -r "${PARAM_REQUIREMENT_FILE}"
pip install -r "${PARAM_EXTRA_PACKAGES_FILE}"

# Adding a blank line
echo

echo "Running command: mypy --config-file ${PARAM_CONFIG} ""${PARAM_PATH}"""
mypy --config-file "${PARAM_CONFIG}" "${PARAM_PATH}"
