#!/bin/bash
V=""
Q=""
if [ "${PARAM_VERBOSE}" = "true" ]; then
    V="--verbose"
fi
if [ "${PARAM_QUITE}" = "true" ]; then
    Q="--quiet"
fi
echo "Running command: black $V $Q --check --config ${PARAM_CONFIG} ""${PARAM_PATH}"""
black $V $Q --check --config "${PARAM_CONFIG}" "${PARAM_PATH}"
# Adding a blank line
echo
echo "Running command: isort --settings-path ${PARAM_CONFIG} ""${PARAM_PATH}"""
isort --settings-path "${PARAM_CONFIG}" "${PARAM_PATH}"
