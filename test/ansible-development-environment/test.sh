#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "ansible-development-environment --version" ansible-development-environment --version

reportResults