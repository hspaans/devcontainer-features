#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "pymarkdownlnt version" pymarkdownlnt version

reportResults