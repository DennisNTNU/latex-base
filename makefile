
FILENAME = main.tex
OUTPUTFOLDER = build

$(OUTPUTFOLDER)/main.pdf: $(FILENAME)
	mkdir -p $(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	pdflatex $(FILENAME) -output-directory=$(OUTPUTFOLDER)
	mv *.aux build
	mv *.out build
	mv *.pdf build
	mv *.log build

.PHONY: clean
clean:
	rm $(OUTPUTFOLDER) -rf
