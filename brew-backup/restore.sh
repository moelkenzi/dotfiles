#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo "❌ Homebrew is not installed. Install it first."
  exit 1
fi

# Restore formulae
if [ -f brew-packages.txt ]; then
  echo "📦 Installing formulae..."
  xargs brew install < brew-packages.txt
fi

# Restore casks
if [ -f brew-casks.txt ]; then
  echo "🍺 Installing casks..."
  xargs brew install --cask < brew-casks.txt
fi

echo "✅ All packages and casks restored!"
