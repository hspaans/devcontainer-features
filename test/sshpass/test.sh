#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "sshpass -V" sshpass -V

reportResults