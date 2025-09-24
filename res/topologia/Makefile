# Makefile para topologia
#

FILES = ../geomdif_res.pkg.sty\
	../geomdif_res.defs.sty

all: topologia-001.pdf $(FILES)

%.pdf:	%.tex
	lualatex $<
	lualatex $<


.PHONY: clean

clean:
	rm -rf *.pdf *.ps *.dvi *.aux *.log *.toc

