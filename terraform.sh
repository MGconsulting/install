#!/bin/sh

cd /tmp
export version=${version:-v1.1.7}
export version=$(echo $version | cut -c 2-)
curl -o terraform.zip -kL https://releases.hashicorp.com/terraform/${version}/terraform_${version}_linux_amd64.zip
unzip terraform.zip
mkdir -p $HOME/.local/bin
mv terraform $HOME/.local/bin/terraform
rm -rf terraform.zip