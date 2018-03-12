all: zane-ma-cv.pdf

open: zane-ma-cv.pdf
	open zane-ma-cv.pdf

zane-ma-cv.pdf: *.tex
	pdflatex cv.tex
	pdflatex cv.tex
	mv cv.pdf zane-ma-cv.pdf

clean:  
	rm -f zane-ma-cv.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *~

deepak: zane-ma-cv.pdf
	open -a Preview.app zane-ma-cv.pdf
