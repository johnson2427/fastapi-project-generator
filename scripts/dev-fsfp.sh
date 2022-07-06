#! /usr/bin/env bash

# Exit in case of error
set -e

if [ ! -d ./fastapi-cookie-cutter ] ; then
    echo "Run this script from outside the project, to generate a sibling dev-fsfp project with independent git"
    exit 1
fi

rm -rf ./dev-fsfp

fastapi-cookie-cutter --no-input -f ./fastapi-cookie-cutter project_name="Dev FSFP"
