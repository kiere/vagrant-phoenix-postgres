#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"

PHOENIX_VERSION=0.17.0

# Install Git if not available
if [ -z `which elixir` ]; then
  echo "===== Installing Elixir"
  wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
  apt-get -y update
  apt-get -y install elixir
  yes Y | mix local.hex
  yes Y | mix archive.install "https://github.com/phoenixframework/phoenix/releases/download/v0.17.0/phoenix_new-$PHOENIX_VERSION.ez"
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/elixir_setup.sh'"
