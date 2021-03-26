all: script

script: script.md ${addsuffix .svg, ${wildcard diagrams/*.dot}}
	pandoc\
	    --standalone\
	    --toc\
	    --number-sections\
	    --filter pandoc-crossref\
	    -M codeBlockCaptions=true\
	    -M listings=true\
	    --listings\
	    --citeproc\
	    --csl iso690-numeric-en.csl\
	    --bibliography sources.bib\
	    -V links-as-notes=true\
	    -V geometry:margin=2cm\
	    -V lof\
	    -o script.pdf\
	    script.md\
	    bibliography.md

diagrams/%.dot.svg: diagrams/%.dot
	dot -T svg -O $^
