#!/bin/sh
set -eu
echo ::group::Patching mermaid-cli
patch ./mermaid-cli/node_modules/@mermaid-js/mermaid-cli/src/index.js $GITHUB_ACTION_PATH/patches/puppeteer-no-sandbox.patch
echo ::endgroup::