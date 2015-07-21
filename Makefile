# type "make" command in Unix to create asme2ej.pdf file 
all:
	latex Report
	bibtex Report
	latex Report
	latex Report
	dvips -o Report.ps Report
	ps2pdf -sPAPERSIZE=a4paper Report.ps Report.pdf

clean:
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *.blg *.pfg *.out)
