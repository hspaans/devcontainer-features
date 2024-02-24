#!/bin/bash -i

set -e

source dev-container-features-test-lib

check "django-upgrade" django-upgrade

reportResults