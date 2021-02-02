

FILENAME = main.tex
FILENAME_BASE = $(basename $(FILENAME))
OUTPUTFOLDER = build

$(OUTPUTFOLDER)/main.pdf: $(FILENAME)
	mkdir -p $(OUTPUTFOLDER)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)
	biber --input-directory $(OUTPUTFOLDER) --output-directory $(OUTPUTFOLDER) $(FILENAME_BASE)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)
	pdflatex -output-directory=$(OUTPUTFOLDER) $(FILENAME)

.PHONY: clean
clean:
	rm -f *.aux *.out *.pdf *.log *.bbl *.bcf *.blg *.xml
	rm -rf $(OUTPUTFOLDER)
