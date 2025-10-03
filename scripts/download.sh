#!/bin/sh
set -eu
echo ::group::Downloading mermaid-cli $version
mkdir mermaid-cli
npm install --prefix ./mermaid-cli @mermaid-js/mermaid-cli@$version
echo ::endgroup::