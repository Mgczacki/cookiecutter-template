#! /bin/bash

set -e

git config core.hooksPath .githooks

pip install uv

uv venv
uv sync
git init
uv run pre-commit install
git add .
git commit -m 'Initializing project.' --no-verify
git flow init -d -t v
