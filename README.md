# scriptorium
scripts and functions I wrote that I use everyday


### Paperless_pdf_validator

This gets rid of the pesky "Unsupported mime type inode/x-empty" error in Paperless/Paperless-ng/Paperless-ngx as it uses qpdf to validate and rewrite the pdf.
This also automagically copies any new files in the INPUT_DIR to my default paperless consume directory so I don't have to manually import files. I can just drop them in the input_dir and it does the rest. Paperless then consumes the files in the consume directory.

### Tabula

Fish function to upload iamges to [Tabula Civitates](https://tabula.civitat.es)

### Volumen

Fish function to upload text to [Volumen](https://volumen.civitat.es)
