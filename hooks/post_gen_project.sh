#!/usr/bin/env bash
set -euo pipefail

pip install uv
uv pip install pre-commit hatch
git init --initial-branch=main
if [ "{{ cookiecutter.remote_origin_url }}" != "https://git@github.com:user_name/repository_name.git" ]; then
    git remote add origin "{{ cookiecutter.remote_origin_url }}"
fi
git flow init -d -t v
uv run pre-commit install
cp .githooks/post-checkout .git/hooks/post-checkout
echo "Custom post-checkout hook installed into .git/hooks."
chmod +x .git/hooks/post-checkout

git switch main

git add .
git commit -m 'Initializing project.' --no-verify
if [ "{{ cookiecutter.force_push_to_remote }}" = "Y" ] && [ "{{ cookiecutter.remote_origin_url }}" != "https://git@github.com:user_name/repository_name.git" ]; then
    # Force push the main branch if a valid remote URL is provided and force_push_to_remote is enabled.
    git push -u origin main --force
    git switch develop || git switch -c develop
    git push -u origin develop || true
fi