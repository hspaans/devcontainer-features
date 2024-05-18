#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "doc8 --version" doc8 --version
check "docformatter --version" docformatter --version
check "eradicate --version" eradicate --version
check "isort --version" isort --version
check "pydocstyle --version" pydocstyle --version
check "pyflakes --version" pyflakes --version


reportResults