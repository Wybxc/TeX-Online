#!/usr/bin/sh

cd `dirname $0`
xelatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error ./article.tex
xelatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error ./beamer.tex
