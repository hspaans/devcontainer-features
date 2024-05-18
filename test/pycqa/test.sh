#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "eradicate --version" eradicate --version
check "isort --version" isort --version

reportResults