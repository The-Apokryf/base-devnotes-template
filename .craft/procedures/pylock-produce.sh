#!/bin/sh

echo "# REGENERATE pylock.toml"

uv export --format pylock.toml > ./pylock.toml
git add pylock.toml
git commit -m "uv export to pylock at publish of new vesion on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
