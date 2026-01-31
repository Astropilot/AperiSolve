#!/usr/bin/env bash
# lint.sh - Run all formatters, linters, and type checks according to pyproject.toml

set -euo pipefail

echo "🖤 Running Ruff format..."
ruff format .

echo "📦 Running Ruff check..."
ruff check --fix .

echo "🔍 Running Mypy..."
mypy .

echo "✅ All checks passed!"
