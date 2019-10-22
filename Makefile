#!/usr/bin/env make

.SILENT:

pdf:
	xelatex diapo.tex

saveme: pdf
	cp diapo.pdf ../workshop_vim.pdf
	$(MAKE) clean

clean:
	mv -f *.nav *.snm *.ist *.lof *.toc *.log *.glo *.aux *.out *.ind *gls *.glg *ilg /tmp 2>/tmp/texclean.log ||true

all:
	echo "make pdf - Création du PDF final"
	echo "make clean - Supprime les fichiers intermédiaires"
	echo "make saveme - Génère le PDF Final et le nomme bien"
