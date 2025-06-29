#! /bin/bash

set -e
pip install uv
uv pip install pre-commit
uv pip install hatch
git init --initial-branch=main
git flow init -d -t v

uv run pre-commit install
cp .githooks/post-checkout .git/hooks/post-checkout
echo "Custom post-checkout hook installed into .git/hooks."
chmod +x .git/hooks/post-checkout
git add .
git commit -m 'Initializing project.' --no-verify
