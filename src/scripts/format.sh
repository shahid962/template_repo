#!/bin/bash
V=""
Q=""
if [ "${PARAM_VERBOSE}" = "true" ]; then
    V="--verbose"
fi
if [ "${PARAM_QUITE}" = "true" ]; then
    Q="--quiet"
fi
echo "Running black $V $Q ""${PARAM_PATH}"" command"
black $V $Q "${PARAM_PATH}"
