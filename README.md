# Reveal.js to PDF converter

This is a reveal.js slide deck to pdf converter script developed for use in university courses.

The idea is to save all the slide decks for a course as PDFs in bulk and release these to students. Some students want to use PDFs as a learning tool (for taking notes etc) which is a legitimate and worthy thing.

Uses [decktape](https://github.com/astefanutti/decktape) and Ghostscript.

The PDF exports aren't _amazing_ compared to the original decks and aren't accessible in terms of being flat images, but allow note taking where required.

N.B.: there are two different approaches in this repo, `convert-slides.sh` and `reveal-to-pdf.sh`, this is because of reasons. `reveal-to-pdf.sh` is the preferred method as of 2021.

## Install

Just need to install decktape:

```
$ npm install decktape
```

## Use

```
$ ./reveal-to-pdf.sh https://url-of-slides.com/presentation/ name-of-pdf.pdf
```

Other scripts uploaded to document use-cases in my classes.


## Tricks/Issues

On many linux distributions, imagemagick doesn't allow PDF transformations by default due to (old) bugs in ghostscript. If you get error messages about "policy" issues, try the hints here: <https://stackoverflow.com/questions/52998331/imagemagick-security-policy-pdf-blocking-conversion>

## Acknowledgements

- Kunal Sareen: developer of original version as part of TA work at the ANU in 2020
- Alfred Klomp: this includes famous [shrinkpdf script](http://www.alfredklomp.com/programming/shrinkpdf)
