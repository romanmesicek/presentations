#!/usr/bin/env bash
set -e

REPO_NAME="presentations"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DIST="$ROOT/dist"

rm -rf "$DIST"
mkdir -p "$DIST"

for dir in "$ROOT"/decks/*/; do
  slug="$(basename "$dir")"
  echo ""
  echo "========================================"
  echo "Building: $slug"
  echo "========================================"

  cd "$dir"
  npm install
  npm install -D playwright-chromium

  # HTML build with correct base path for GitHub Pages
  npx slidev build --base "/$REPO_NAME/$slug/"
  mkdir -p "$DIST/$slug"
  cp -r dist/. "$DIST/$slug/"

  # PDF export (non-fatal — complex animations may cause timeouts)
  echo "Exporting PDF: $slug"
  npx slidev export --output slides.pdf --timeout 60000 || echo "WARNING: PDF export failed for $slug, skipping."
  [ -f slides.pdf ] && cp slides.pdf "$DIST/$slug/slides.pdf"

  cd "$ROOT"
done

echo ""
echo "Build complete. Output in: $DIST"
ls -la "$DIST"
