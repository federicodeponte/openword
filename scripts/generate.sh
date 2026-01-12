#!/bin/bash
# OpenLetter PDF Generator
# Usage: ./generate.sh input.html output.pdf

set -e

INPUT="${1:-letter.html}"
OUTPUT="${2:-letter.pdf}"

# Check dependencies
if ! command -v weasyprint &> /dev/null; then
    echo "Error: weasyprint is not installed"
    echo "Install with: brew install weasyprint"
    exit 1
fi

# Generate PDF
echo "Generating PDF from $INPUT..."
weasyprint "$INPUT" "$OUTPUT"

echo "Created: $OUTPUT"

# Optional: Open the PDF
if [[ "$OSTYPE" == "darwin"* ]]; then
    open "$OUTPUT"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "$OUTPUT" 2>/dev/null || true
fi
