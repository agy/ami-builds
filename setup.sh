#!/bin/bash
#
# This script installs the bare minimum to get Ansible remote running
# on an instance.
#
# Do NOT add anything else here.
#

set -e
set -u

sudo apt-get update
sudo apt-get --yes install --no-install-recommends python
