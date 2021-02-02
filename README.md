### latex-base
Base project folder for creating .pdfs from latex files

`$ make` to build the output document.

#### Prereqs

These should do the trick

`$ sudo apt install latex209-base latexmk texlive`

For .eps figures

`$ sudo apt install texlive-font-utils`

For library management (referencing and reference list)

`$ sudo apt install texlive-bibtex-extra biber`

For algorithm environment and other things

`$ sudo apt install texlive-science`

---

If you want to install everything (requires >5BG of storage):

`$ sudo apt install texlive-full`