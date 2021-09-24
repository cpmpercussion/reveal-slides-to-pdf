#!/bin/bash
# Charles Martin 2021
url=$1
name=$2
tmpfile=$(mktemp)

echo "reveal-to-pdf: converting ${presentation} slides to pdf"
`npm bin`/decktape -s 1280x800 "${url}" "${tmpfile}".pdf
echo "reveal-to-pdf: shrinking pdf size"
# this GS command uses minimum image quality - the options are:
# /prepress - 300 dpi
# /ebook	150 dpi
# /screen	72 dpi
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="${name}".pdf "${tmpfile}".pdf
rm "${tmpfile}".pdf
echo "done."

