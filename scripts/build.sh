#!/bin/bash

# Look for package.json
if [[ -f package-lock.json || -f npm-shrinkwrap.json ]]; then
    npm ci
fi

hugo --gc --minify --baseURL "viktorpopp.github.io/blog/"
