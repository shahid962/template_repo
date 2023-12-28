#!/bin/bash
V=""
Q=""
echo "Verbose is: ${PARAM_VERBOSE}"
# if [ "${PARAM_VERBOSE}" -eq 1 ] ; then
#     V="--verbose"
# fi

${PARAM_VERBOSE} && V="--verbose"
${PARAM_QUIET} && Q="--quiet"

# if [ "${PARAM_QUIET}" -eq 1 ] ; then
#     Q="--quiet"
# fi

echo "Running command: black $V $Q --check --config ${PARAM_CONFIG} ""${PARAM_PATH}"""
black $V $Q --diff --check --config "${PARAM_CONFIG}" "${PARAM_PATH}"
# Adding a blank line
echo
echo "Running command: isort --settings-path ${PARAM_CONFIG} ""${PARAM_PATH}"""
isort --settings-path "${PARAM_CONFIG}" "${PARAM_PATH}"
