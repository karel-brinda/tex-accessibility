#! /usr/bin/env bash

set -o verbose
set -o pipefail

# xelatex
xelatex xelatex__czech_utf8

# lualatex
lualatex lualatex__czech_utf8

# pdflatex
pdflatex -jobname="pdflatex__czech_utf8" latex__czech_utf8.tex

# latex + dvipdf
latex latex__czech_utf8
dvipdf latex__czech_utf8 latex+dvipdf__czech_utf8.pdf

# latex + dvips + ps2pdf
latex latex__czech_utf8
dvips latex__czech_utf8
ps2pdf latex__czech_utf8.ps latex+dvips+ps2pdf__czech_utf8.pdf

