#!/usr/bin/env bash

echo "Install dependencies"
sudo apt update
sudo apt install -y curl

echo "Add script from warrensbox owner"
curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | sudo bash

echo "Install terraform from .tfswitchrc"
tfswitch `cat .tfswitchrc`

echo "terraform version"
terraform version
