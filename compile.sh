#!/bin/bash

# Exit immediately if a command fails
set -e

# Compile the LaTeX file to PDF using XeLaTeX
xelatex readingtypes.tex

# Convert the PDF to PNG using ImageMagick
convert -density 300 readingtypes.pdf -background white -alpha remove -quality 100 readingtypes.png

echo "✅ Conversion complete: readingtypes.png"
