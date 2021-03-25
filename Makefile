all: script

script: script.md
	pandoc script.md\
	    -o script.pdf\
	    -V geometry:margin=2cm
