#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "pyupgrade --version" pyupgrade --version

reportResults