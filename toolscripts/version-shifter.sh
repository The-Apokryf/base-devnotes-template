#!/bin/sh

uv version --bump minor
npm version $(uv version --short) --force
git add .
git commit -m "version shifts! current GRIH taging points on $(uv version --short)"