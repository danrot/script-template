all: script

script: script.md ${addsuffix .svg, ${wildcard diagrams/*.dot}}
	$(MAKE) MARKDOWN_SCRIPT_DIR=markdown-script -f markdown-script/Makefile

diagrams/%.dot.svg: diagrams/%.dot
	dot -T svg -O $^
