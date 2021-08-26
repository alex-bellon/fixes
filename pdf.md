# PDF

## Combine 2 PDFs
```bash
pdfunite a.pdf b.pdf c.pdf d.pdf abcd.pdf
```

## Decompress
- `qpdf --qdf --object-streams=disable orig.pdf uncompressed-qpdf.pdf`

## PDF not rendering in browser/has blank pages
- [PDF.js](https://github.com/mozilla/pdf.js/issues/8260) [issues](https://github.com/mozilla/pdf.js/issues/6741)
- TL;DR: There's probably an embedded image that has huge dimensionsw
