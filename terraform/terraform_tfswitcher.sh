#!/usr/bin/env bash

printf "\nInstall dependencies"
sudo apt update
sudo apt install -y curl

printf "\nAdd script from warrensbox owner"
curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | sudo bash

printf "\nInstall terraform from .tfswitchrc"
tfswitch `cat .tfswitchrc`

printf "append home terraform path to PATH"
export PATH=$PATH:/home/vagrant/bin

printf "\nterraform version"
terraform version
