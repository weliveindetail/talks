#/usr/bin/env bash

set -e

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <drawio_file> <labels_file>"
  exit 1
fi

DRAWIO_FILE="$1"
LABELS_FILE="$2"

if [ ! -f "$DRAWIO_FILE" ]; then
  echo "Error: draw.io file not found: $DRAWIO_FILE"
  exit 1
fi

if [ ! -f "$LABELS_FILE" ]; then
  echo "Error: labels file not found: $LABELS_FILE"
  exit 1
fi

OUTPUT_FILE="${DRAWIO_FILE%.drawio}.modified.drawio"
cp "$DRAWIO_FILE" "$OUTPUT_FILE"

# Build a literal OR-regex from labels file
LABEL_REGEX=$(sed 's/[\/&]/\\&/g' "$LABELS_FILE" | paste -sd '|' -)

# If labels file is empty, match nothing
[ -z "$LABEL_REGEX" ] && LABEL_REGEX="a^"

sed -i '' \
  -e "/value=.*\(${LABEL_REGEX}\)/! s/strokeColor=black/strokeColor=none/g" \
  -e "/value=.*\(${LABEL_REGEX}\)/! s/color=&#39;#000000&#39;/color=none/g" \
  "$OUTPUT_FILE"

echo "Done."
echo "Modified file: $OUTPUT_FILE"
