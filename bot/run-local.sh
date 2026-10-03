#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ -x "./luvit" ]; then
  exec ./luvit main.lua
fi

if command -v luvit >/dev/null 2>&1; then
  exec luvit main.lua
fi

if command -v luvi >/dev/null 2>&1; then
  exec luvi main.lua
fi

echo "Luvit is not installed yet."
echo "Install it first, then run this script again."
echo ""
echo "Typical install options:"
echo "  npm install -g luvit"
echo "  or follow the official Luvit install guide"
echo ""
exit 1
