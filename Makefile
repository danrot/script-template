all: script

script: script.md ${addsuffix .svg, ${wildcard diagrams/*.dot}}
	pandoc script.md\
	    -o script.pdf\
	    --toc\
	    --number-sections\
	    -V geometry:margin=2cm\
	    -V lof\
	    --filter pandoc-crossref

diagrams/%.dot.svg: diagrams/%.dot
	dot -T svg -O $^
