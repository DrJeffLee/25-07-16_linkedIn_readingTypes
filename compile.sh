#!/bin/bash

# Exit immediately if a command fails
set -e

FILENAME=readingtypes

# Compile the LaTeX file to PDF using XeLaTeX
xelatex $FILENAME.tex

# Convert the PDF to PNG using ImageMagick
convert -density 300 $FILENAME.pdf \
        -resize 1080x1350^ -gravity center -extent 1080x1350 \
        -background white -alpha remove -quality 100 \
        $FILENAME.png

echo "✅ Conversion complete: $FILENAME.png"
