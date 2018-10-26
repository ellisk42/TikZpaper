#!/bin/bash

rm -r archive archive.tar
mkdir archive
mkdir archive/

cp long.tex main.bib long.bbl nips_2018.sty archive
#cp /usr/share/texlive/texmf-dist/tex/latex/natbib/natbib.sty archive
cp natbib.sty archive

cp --parents `grep png long.tex|sed 's/.*figures/figures/'|sed 's/}.*//'` archive/
cp figures/expert-*-trim.png archive/figures
tar cvf archive.tar archive/
