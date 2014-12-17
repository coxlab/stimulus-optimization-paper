texfilename=main

pdf:
	 pdflatex ${texfilename}
	 bibtex ${texfilename} || true
	 pdflatex ${texfilename}
	 pdflatex ${texfilename}
	 # dvipdf ${texfilename}.dvi

read:
	 open ${texfilename}.pdf &

clean:
	 rm -f ${texfilename}.log ${texfilename}.aux ${texfilename}.out ${texfilename}.dvi ${texfilename}.bbl ${texfilename}.blg

