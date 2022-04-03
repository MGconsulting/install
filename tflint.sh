#!/bin/sh

cd /tmp
export version=${version:-v0.35.0}
curl -o tflint.zip -kL https://github.com/terraform-linters/tflint/releases/download/${version}/tflint_linux_amd64.zip
unzip tflint.zip
mkdir -p $HOME/.local/bin
mv tflint $HOME/.local/bin/tflint
rm -rf tflint.zip




