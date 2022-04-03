#!/bin/sh

cd /tmp
export version=${version:-v1.11.0}
curl -o tfsec -kL https://github.com/aquasecurity/tfsec/releases/download/${version}/tfsec-linux-amd64
chmod +x tfsec
mkdir -p $HOME/.local/bin
mv tfsec $HOME/.local/bin/tfsec