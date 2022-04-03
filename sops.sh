#!/bin/sh

cd /tmp
export version=${version-:v3.7.2}
curl -o sops -kL https://github.com/mozilla/sops/releases/download/${version}/sops-${version}.linux
chmod +x sops
mkdir -p $HOME/.local/bin
mv sops $HOME/.local/bin/sops