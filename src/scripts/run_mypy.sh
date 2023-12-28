#!/bin/bash

echo "Installing pip packages from ${PARAM_REQUIREMENT_FILE} file..."
# Adding a blank line
echo
pip install -r "${PARAM_REQUIREMENT_FILE}"

# Install extra packages
if [ "${PARAM_EXTRA_PACKAGES_FILE}" != "" ]; then
echo "Installing pip packages from ${PARAM_EXTRA_PACKAGES_FILE} file..."
pip install -r "${PARAM_EXTRA_PACKAGES_FILE}"
fi

# Adding a blank line
echo

echo "Running command: mypy --config-file ${PARAM_CONFIG} ""${PARAM_PATH}"""
mypy --config-file "${PARAM_CONFIG}" "${PARAM_PATH}"
