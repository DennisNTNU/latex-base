

FILENAME = main.tex
FILENAME_BASE = $(basename $(FILENAME))
OUTPUTFOLDER = build
OTHER_FILE_DEPS = docsetup.tex example.bib

$(OUTPUTFOLDER)/main.pdf: $(FILENAME) $(OTHER_FILE_DEPS)
	mkdir -p $(OUTPUTFOLDER)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)
	biber --input-directory $(OUTPUTFOLDER) --output-directory $(OUTPUTFOLDER) $(FILENAME_BASE)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)

# add the option '-interaction batchmode' to pdflatex to suppress output, but also errors and warnings.

# alternative, less tedious manual method to compile TeX using latexmk
lmk:
	mkdir -p $(OUTPUTFOLDER)
	latexmk -pdf -output-directory=$(OUTPUTFOLDER) $(FILENAME)

.PHONY: clean
clean:
	rm -f *.aux *.out *.pdf *.log *.bbl *.bcf *.blg *.xml
	rm -rf $(OUTPUTFOLDER)
