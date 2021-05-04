SILENT := @
ECHO := echo
PDFLATEX := pdflatex

all: first check

first: *.tex *.bib
	$(SILENT) $(ECHO) "--- Compiling $< ---"
	$(SILENT) $(PDFLATEX) $<
	sleep 2

check:
	if [ 1 -eq $(shell grep -c 'undefined references' linux-20.log) ]; then bibtex linux-20; pdflatex linux-20; pdflatex linux-20; fi

.PHONY: clean

clean:
	$(SILENT) $(ECHO) "--- Removing unnecesarry files. ---"
	$(SILENT) rm -f *.aux *.bbl *.blg *.log *.pdf
