#!/bin/bash
# This gets rid of the pesky "Unsupported mime type inode/x-empty" error in Paperless/Paperless-ng/Paperless-ngx as it uses qpdf to validate and rewrite the pdf.
# This also automagically copies any new files in the INPUT_DIR to my default paperless consume directory.
# Created by Abe Indoria, 2023.

INPUT_DIR="/home/username/DOCUMENTS"
OUTPUT_DIR="/home/username/Storage_1/PAPERLESS/Consume"

# Monitor the input directory for new files and convert non-PDF files to PDF
inotifywait -m -r -e create --format '%w%f' "$INPUT_DIR" | while read file; do
    mime_type=$(file --mime-type -b "$file")
    if [[ "$mime_type" == "application/pdf" ]]; then
        mkdir -p "$OUTPUT_DIR/$(dirname "$file")" && cp "$file" "$OUTPUT_DIR/$file"
    else
        sleep 5
        qpdf --replace-input --normalize-content=y "$file" && wait
        sleep 5
        mkdir -p "$OUTPUT_DIR/$(dirname "$file")" && cp "$file" "$OUTPUT_DIR/$file"
    fi
done
