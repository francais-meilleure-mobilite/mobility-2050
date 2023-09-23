TEX_SRC = $(wildcard *.tex)
PDF_SRC = $(TEX_SRC:.tex=.pdf)

livre-blanc.pdf: $(TEX_SRC) $(shell ls *pdf | grep -v livre-blanc.pdf)
	xelatex -interaction=nonstopmode livre-blanc.tex
	xelatex -interaction=nonstopmode livre-blanc.tex

metropole.pdf : livre-blanc.pdf
ped-velo.pdf : livre-blanc.pdf
principes.pdf : livre-blanc.pdf
social.pdf : livre-blanc.pdf
tc.pdf : livre-blanc.pdf
conclusion.pdf : livre-blanc.pdf
