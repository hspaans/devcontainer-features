#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "pyadr --version" pyadr --version

reportResults