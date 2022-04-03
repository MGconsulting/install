#!/bin/sh

cd /tmp
export version=${version-:v1.0.0}
curl -o age.tar.gz -kL https://github.com/FiloSottile/age/releases/download/${version}/age-${version}-linux-amd64.tar.gz
tar xvf age.tar.gz
mkdir -p $HOME/.local/bin
mv age/age $HOME/.local/bin/age
rm -rf age