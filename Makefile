tex=xelatex
open=xdg-open
target=IntSys

default: remake
remake:
	touch $(target).toc
	make $(target).pdf
	make $(target).pdf

$(target).pdf: $(target).tex $(target).toc Makefile
	$(tex) $<
	$(open) $@

clean:
	rm -f *.aux *.toc *.log
