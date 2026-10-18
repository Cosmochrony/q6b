#!/bin/bash

# Q6b paper compilation script
# Compiles Q6b.tex with bibliography support

set -e  # Exit on error

# Configuration
TEX_FILE="tex/Q6b.tex"
OUTPUT_DIR="out"
MAIN_NAME="Q6b"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}=== Compiling Q6b paper ===${NC}"

# Create output directory if it doesn't exist
if [ ! -d "$OUTPUT_DIR" ]; then
    echo -e "${YELLOW}Creating output directory: $OUTPUT_DIR${NC}"
    mkdir -p "$OUTPUT_DIR"
fi

# Set TEXINPUTS to include tex directory for .cls and .bib files
export TEXINPUTS=".:./tex:${TEXINPUTS}"

# Step 1: First pdflatex run
echo -e "${GREEN}Step 1/5: First pdflatex run${NC}"
pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
    -output-directory="$OUTPUT_DIR" \
    -recorder \
    "$TEX_FILE"

# Step 2: Run bibtex
echo -e "${GREEN}Step 2/5: Running bibtex${NC}"
cd "$OUTPUT_DIR"
# bibtex exits 1 on warnings and 2 or more on errors: tolerate warnings only
BIBTEX_STATUS=0
BSTINPUTS="../tex:${BSTINPUTS}" BIBINPUTS="../tex:${BIBINPUTS}" bibtex "$MAIN_NAME" || BIBTEX_STATUS=$?
if [ "$BIBTEX_STATUS" -gt 1 ]; then
    echo -e "${RED}bibtex failed (status $BIBTEX_STATUS)${NC}"
    exit 1
fi
cd ..

# Steps 3-4: rerun pdflatex until cross-references are stable (at most 4 more passes)
LOG="$OUTPUT_DIR/$MAIN_NAME.log"
for PASS in 2 3 4 5; do
    echo -e "${GREEN}Step 3/5 (pass $PASS): pdflatex${NC}"
    pdflatex -file-line-error -interaction=nonstopmode -synctex=1 \
        -output-directory="$OUTPUT_DIR" \
        -recorder \
        "$TEX_FILE"
    if [ "$PASS" -ge 3 ] && ! grep -aqE "Rerun to get|may have changed" "$LOG"; then
        break
    fi
done
if grep -aqE "Rerun to get|may have changed" "$LOG"; then
    echo -e "${RED}Cross-references still unstable after pass $PASS${NC}"
    exit 1
fi
echo -e "${GREEN}Step 4/5: cross-references stable after pass $PASS${NC}"

# Step 5: Final check
if [ -f "$OUTPUT_DIR/$MAIN_NAME.pdf" ]; then
    echo -e "${GREEN}=== Compilation successful ===${NC}"
    echo -e "Output: $OUTPUT_DIR/$MAIN_NAME.pdf"
    ls -lh "$OUTPUT_DIR/$MAIN_NAME.pdf"
else
    echo -e "${RED}=== Compilation failed ===${NC}"
    echo -e "Check $OUTPUT_DIR/$MAIN_NAME.log for errors"
    exit 1
fi
