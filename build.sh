#!/bin/bash
set -e

rm -rf dist
mkdir -p dist

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

rm -f dist/_headers dist/_redirects

echo "Build complete. Files in dist/:"
ls -la dist/
