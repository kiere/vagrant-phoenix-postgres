#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"

# Install build dependencies for a sane build environment
apt-get -y update
apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

echo "=== End Vagrant Provisioning using 'config/vagrant/build_dependency_setup.sh'"
