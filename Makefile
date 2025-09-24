# Makefile for geomdif_ej
#

FILES = geomdif_ej.pkg.sty\
	geomdif_ej.defs.sty\
	portada/portada.tex\
	tablacontenidos/tablacontenidos.tex\
	ejercicios/topologia.tex\
	img/titulo/geomdif_ej-orange.eps

img/titulo/%.eps: img/titulo/%.svg
	inkscape -o img/titulo/$*.eps --export-type=eps img/titulo/$*.svg

geomdif_ej.pdf: geomdif_ej.tex $(FILES)

%.pdf:	%.tex
	lualatex $<
	lualatex $<

all: diffgeom_ej.pdf

.PHONY: clean

clean:
	rm -rf geomdif_ej.pdf *.ps *.dvi *.aux *.log *.toc
	rm -rf ejercicios/*.aux portada/*.aux tablacontenidos/*.aux
	rm -rf img/logo/*.pdf img/titulo/*.eps img/titulo/*.pdf

