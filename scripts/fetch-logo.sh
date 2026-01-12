#!/bin/bash
# Fetch and prepare a logo from a URL
# Usage: ./fetch-logo.sh <logo_url> [output_path]

set -e

URL="$1"
OUTPUT="${2:-assets/logo.png}"

if [ -z "$URL" ]; then
    echo "Usage: ./fetch-logo.sh <logo_url> [output_path]"
    exit 1
fi

# Download
echo "Downloading logo from $URL..."
curl -sL "$URL" -o "$OUTPUT"

# Check if it's an SVG and convert if needed
if file "$OUTPUT" | grep -q "SVG"; then
    echo "Converting SVG to PNG..."
    if command -v rsvg-convert &> /dev/null; then
        rsvg-convert -w 400 "$OUTPUT" -o "${OUTPUT%.svg}.png"
        OUTPUT="${OUTPUT%.svg}.png"
    else
        echo "Warning: rsvg-convert not found, keeping SVG"
    fi
fi

# Trim whitespace if ImageMagick is available
if command -v convert &> /dev/null || command -v magick &> /dev/null; then
    echo "Trimming whitespace..."
    if command -v magick &> /dev/null; then
        magick "$OUTPUT" -trim +repage "$OUTPUT"
    else
        convert "$OUTPUT" -trim +repage "$OUTPUT"
    fi
fi

echo "Logo saved to: $OUTPUT"
file "$OUTPUT"
