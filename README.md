# Script Template

This is my script template using pandoc to translate a markdown file called `script.md` to a PDF. The script is created
using the [`markdown-script` package](https://github.com/danrot/markdown-script).

## Prerequisites

- [pandoc](https://pandoc.org/installing.html) has to be installed and be available in the `PATH`
- The [`make`](https://www.gnu.org/software/make/) command has to be available in the `PATH`
- The [`dot`](https://www.graphviz.org/download/) command has to be available in the `PATH` as well if diagrams should
be generated

## Create the script

Building the script into a single self-contained PDF file is done by executing the following command:

```bash
make
```

## Customizing the script

This is just a project template, so it only contains boilerplate code, that can be changed as required. The following
sections explain each file in detail.

### script.md

This file is written using [pandoc's flavour of markdown](https://pandoc.org/MANUAL.html#pandocs-markdown). The first
lines are information for the title slide of the script:


```markdown
% Title of the presentation
% Author of the presentation
% Date of the presentation
```

### Diagrams

Diagrams are automatically created using `dot` from the files ending with `.dot` in the `diagrams` folder. They are
placed as SVGs in the same `diagram` folder, but will have a `.svg` ending. By this name it can be included in the
presentation. So `diagrams/test.dot` will become `diagrams/test.dot.svg` and can be included in the `script.md` file:

```markdown
![test](diagram/test.dot.svg){#fig:test}

Something is shown in [@fig:test].
```

### Code blocks

Code blocks can be written as fenced code blocks as usual in markdown. Additional
[pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) is used to allow referencing code blocks in markdown:


~~~markdown
```javascript
console.log('Test');
```
: Console caption {#lst:console}

Something is shown in [@lst:console].
~~~
