# Reveal.js to PDF converter

This is a reveal.js slide deck to pdf converter script developed for use in university courses.

The idea is to save all the slide decks for a course as PDFs in bulk and release these to students. Some students want to use PDFs as a learning tool (for taking notes etc) which is a legitimate and worthy thing.

The PDF exports aren't _amazing_ compared to the original decks and aren't accessible in terms of being flat images, but allow note taking where required.

## Install

## Use

## Tricks/Issues

On many linux distributions, imagemagick doesn't allow PDF transformations by default due to (old) bugs in ghostscript. If you get error messages about "policy" issues, try the hints here: <https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion>

## Acknowledgements

- Kunal Sareen: developer of original version as part of TA work at the ANU in 2020
- Alfred Klomp: this includes famous [shrinkpdf script](http://www.alfredklomp.com/programming/shrinkpdf)
