#!/bin/sh

echo "# REGENERATE requirements.txt"

uv export --format requirements.txt > ./requirements.txt
git add requirements.txt
git commit -m "uv export to basic requirements python file at publish of new vesion on now at $(node -e "console.log('UNIXUSAT'+Date.now())")"
