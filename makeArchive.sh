#!/bin/bash

rm -r archive archive.tar
mkdir archive
mkdir archive/figures

cp short.tex main.bib short.bbl iclr2018_conference.sty /usr/share/texlive/texmf-dist/tex/latex/natbib/natbib.sty archive

cp `grep png short.tex|sed 's/.*figures/figures/'|sed 's/}.*//'` archive/figures
cp figures/expert-*-trim.png archive/figures
tar cvf archive.tar archive/
