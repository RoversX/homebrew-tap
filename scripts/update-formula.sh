#!/usr/bin/env bash
# Usage:
#   ./scripts/update-formula.sh apple_reminder_cli 0.1.2 /tmp/apple_reminder_cli0.1.2.zip
#   ./scripts/update-formula.sh launchnext 2.5.0 /tmp/LaunchNext2.5.0.zip
set -euo pipefail

TOOL=$1
VERSION=$2
ZIP=$3

SHA=$(shasum -a 256 "$ZIP" | awk '{print $1}')

case "$TOOL" in
  apple_reminder_cli)
    FILE="Formula/apple_reminder_cli.rb"
    ;;
  launchnext)
    FILE="Casks/launchnext.rb"
    ;;
  *)
    echo "Unknown tool: $TOOL" >&2
    exit 1
    ;;
esac

sed -i '' "s|version \".*\"|version \"${VERSION}\"|" "$FILE"
sed -i '' "s|sha256 \".*\"|sha256 \"${SHA}\"|" "$FILE"

echo "Updated $FILE → v${VERSION} sha256=${SHA}"
echo ""
echo "Next steps:"
echo "  git add $FILE"
echo "  git commit -m \"${TOOL} v${VERSION}\""
echo "  git push"
