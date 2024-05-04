#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "rstcheck --version" rstcheck --version

reportResults