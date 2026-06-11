#!/usr/bin/env bash
# wal-gen.sh — Generate color scheme from wallpaper and reload QuickShell
# Usage: ./wal-gen.sh /path/to/wallpaper.jpg

set -euo pipefail

WALLPAPER="${1:-$HOME/wallpaper.jpg}"

[[ -f "$WALLPAPER" ]] || { echo "Usage: $0 /path/to/wallpaper"; exit 1; }

echo "🎨 Generating colors from: $WALLPAPER"
wal -i "$WALLPAPER" --saturate 0.7

echo "🔄 Reloading QuickShell…"
"$(dirname "$0")/reload.sh"

echo "✅ Done"
