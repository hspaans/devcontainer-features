#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "adt --version" adt --version

reportResults