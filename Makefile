all: script

script: script.md
	pandoc script.md\
	    -o script.pdf\
	    --toc\
	    --number-sections\
	    -V geometry:margin=2cm
