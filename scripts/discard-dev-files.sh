#! /usr/bin/env bash

set -e

rm -rf fastapi-cookie-cutter/.git
rm -rf fastapi-cookie-cutter/backend/app/poetry.lock
rm -rf fastapi-cookie-cutter/frontend/node_modules
rm -rf fastapi-cookie-cutter/frontend/dist
git checkout fastapi-cookie-cutter/README.md
git checkout fastapi-cookie-cutter/.gitlab-ci.yml
git checkout fastapi-cookie-cutter/fastapi-cookie-cutter-config-file.yml
git checkout fastapi-cookie-cutter/.env
git checkout fastapi-cookie-cutter/frontend/.env
