all: script

script: script.md ${addsuffix .svg, ${wildcard diagrams/*.dot}} ${addsuffix .svg, ${wildcard diagrams/*.plantuml}}
	$(MAKE) MARKDOWN_SCRIPT_DIR=markdown-script -f markdown-script/Makefile

diagrams/%.dot.svg: diagrams/%.dot
	dot -T svg -O $^

diagrams/%.plantuml.svg: diagrams/%.plantuml
	cat $^ | plantuml -tsvg -pipe > $^.svg
