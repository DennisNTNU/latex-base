
FILENAME = main.tex
OUTPUTFOLDER = build

$(OUTPUTFOLDER)/main.pdf: $(FILENAME)
	mkdir -p $(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	mv *.aux $(OUTPUTFOLDER)
	mv *.out $(OUTPUTFOLDER)
	mv *.pdf $(OUTPUTFOLDER)
	mv *.log $(OUTPUTFOLDER)

.PHONY: clean
clean:
	rm -f *.aux *.out *.pdf *.log
	rm -rf $(OUTPUTFOLDER)
