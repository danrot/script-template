all: script

script: script.md
	pandoc script.md -o script.pdf
