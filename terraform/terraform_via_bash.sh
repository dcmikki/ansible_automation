#!/usr/bin/env bash

echo "Install dependencies"
sudo apt update
sudo apt install -y gnupg software-properties-common curl

echo "Add hashicorp offitual repo"
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

echo "Install terraform...."
sudo apt install -y terraform

echo "terraform version"
terraform version