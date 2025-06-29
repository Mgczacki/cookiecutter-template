#! /bin/bash

set -e
pip install uv
uv pip install pre-commit
uv pip install hatch
git init
git branch -m main
git flow init -d -t v
git config gitflow.branch.master main
git config core.hooksPath .githooks

uv run pre-commit install
git add .
git commit -m 'Initializing project.' --no-verify

