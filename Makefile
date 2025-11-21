all: build/main.pdf

build/main.pdf: main.tex preamble.tex $(wildcard chapters/*.tex) $(wildcard assets/*)
	pdflatex --output-directory=build main.tex
	pdflatex --output-directory=build main.tex

clean:
	rm -rf build/*