

FILENAME = main.tex
FILENAME_BASE = $(basename $(FILENAME))
OUTPUTFOLDER = build

$(OUTPUTFOLDER)/main.pdf: $(FILENAME)
	mkdir -p $(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	biber $(FILENAME_BASE)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	mv *.aux $(OUTPUTFOLDER)
	mv *.out $(OUTPUTFOLDER)
	mv *.pdf $(OUTPUTFOLDER)
	mv *.log $(OUTPUTFOLDER)
	mv *.bbl $(OUTPUTFOLDER)
	mv *.bcf $(OUTPUTFOLDER)
	mv *.blg $(OUTPUTFOLDER)
	mv *.xml $(OUTPUTFOLDER)

.PHONY: clean
clean:
	rm -f *.aux *.out *.pdf *.log *.bbl *.bcf *.blg *.xml
	rm -rf $(OUTPUTFOLDER)
