
PDF_FILE=rel
FINAL_PDF=

.PHONY: ${PDF_FILE}.pdf all spellcheck

all: ${PDF_FILE}.pdf

${PDF_FILE}.pdf: clean ${PDF_FILE}.tex
	xelatex ${PDF_FILE}.tex
	xelatex ${PDF_FILE}.tex

final: ${PDF_FILE}.pdf 
	cp $< ${FINAL_PDF}.pdf


spellcheck: *.tex
	aspell -t -c ${PDF_FILE}.tex

clean:
	${RM} *~ *.aux *.log *.bbl *.blg *.out ${PDF_FILE}.pdf
