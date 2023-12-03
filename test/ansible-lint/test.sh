#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ansible-lint --version" ansible-lint --version

reportResults