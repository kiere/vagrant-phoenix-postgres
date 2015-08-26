#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/git_setup.sh'"

# Install Git if not available
if [ -z `which git` ]; then
  echo "===== Installing Git"
  apt-get -y update
  apt-get -y install git-core
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/git_setup.sh'"
