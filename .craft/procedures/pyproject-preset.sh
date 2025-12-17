#!/bin/sh

echo "# REGENERATE uv.lock"

uv sync
uv lock
git add uv.lock pyproject.toml
git commit -m "update of uv and python metadependencies descriptors at publish of new vesion"

