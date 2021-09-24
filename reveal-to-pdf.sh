#!/bin/bash
# Author: Kunal Sareen 2020
# Further development by Charles Martin 2020
url=$1
name=$2
tmpfile=$(mktemp)

mkdir "${name}"
echo "convert-slides: converting ${presentation} slides to pdf"
`npm bin`/decktape --screenshots --screenshots-directory=${name} --screenshots-size=1920x1200 --screenshots-format png "${url}" "${name}".pdf
cd "${name}"

ls * | egrep '_[0-9]_' | sed -e 'p;s/_\([0-9]\)_/_00\1_/' | xargs -n2 mv
ls * | egrep '_[0-9]{2}_' | sed -e 'p;s/_\([0-9]\{2\}\)_/_0\1_/' | xargs -n2 mv

convert *.png "${name}".pdf
mv "${name}".pdf ..

cd ..
rm -rf "${name}"

echo "convert-slides: shrinking pdf size"

# usually have to shrink twice due to large size
./shrink-pdf "${name}".pdf > "${tmpfile}".pdf
mv "${tmpfile}".pdf "${name}".pdf
./shrink-pdf "${name}".pdf > "${tmpfile}".pdf
mv "${tmpfile}".pdf "${name}".pdf

