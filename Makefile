.PHONY: open watch


zane-ma-cv.pdf: *.tex
	latexmk -pdf cv.tex
	mv cv.pdf zane-ma-cv.pdf

open: zane-ma-cv.pdf
	open zane-ma-cv.pdf

watch: open
	latexmk -pvc -view=none -pdf zane-ma-cv.pdf

clean:  
	rm -f zane-ma-cv.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *~

