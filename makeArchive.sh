#!/bin/bash

rm -r archive archive.tar
mkdir archive
mkdir archive/figures

cp paper.tex main.bib paper.bbl nips_2017.sty /usr/share/texlive/texmf-dist/tex/latex/natbib/natbib.sty archive

cp `grep png paper.tex|sed 's/.*figures/figures/'|sed 's/}.*//'` archive/figures
tar cvf archive.tar archive/
