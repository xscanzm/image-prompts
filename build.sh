#!/bin/bash
# Build script for Cloudflare Pages
# Copies static files to dist/ excluding .git and other unnecessary files

set -e

rm -rf dist
mkdir -p dist

# Copy all files and directories except excluded ones
for item in *; do
  case "$item" in
    .git|.github|node_modules|dist|build.sh)
      continue
      ;;
    *)
      cp -r "$item" "dist/$item"
      ;;
  esac
done

echo "Build complete. Files in dist/:"
ls -la dist/
