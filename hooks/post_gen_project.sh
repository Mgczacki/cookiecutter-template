#! /bin/bash

set -e

git config core.hooksPath .githooks

pip install hatch

hatch env create
