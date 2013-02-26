#!/bin/sh


perl -p0i -e 's!^.*\\begin\{document\}!!gs' $1
perl -p0i -e 's!\\end\{document\}.*$!!gs' $1
perl -p0i -e 's!\\textcolor\[rgb\]\{[0-9\,\.]+\}\{(.*?)\}!$1!gs' $1
perl -p0i -e 's!\{\\selectlanguage\{english\}\\color\{black\}(.*?)\}\n\n!$1\n\n!gs' $1
perl -p0i -e 's!\{\\selectlanguage\{english\}\\color\{black\}(.*?)\}$!$1!gs' $1
perl -p0i -e 's!\{\\selectlanguage\{english\}\\mdseries\\upshape\\color\{black\}(.*?)\}\n\n!$1\n\n!gs' $1
perl -p0i -e 's!\\bigskip\n!!gs' $1
perl -p0i -e 's!\\section\[.*?\]\{(.*?)\}!\\section{$1}!gs' $1
perl -p0i -e 's!\\clearpage\\setcounter\{page\}\{1\}\\pagestyle\{Standard\}\n\{\\centering\\selectlanguage\{english\}\\bfseries\\color\{black\}\n(.*?)\n\\par\}!\\chapter{$1}!gs' $1

