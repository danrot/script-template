% Script title
% Daniel Rotter

# Heading 1

Some text below heading 1. This file will be converted using Pandoc[@pandoc2021] and referencing bibliography using
BibText[@bibtex2021]. Books[@vernon2013] can also be referenced.

![A sample caption](diagrams/test.dot.svg){#fig:test}

Something is shown in [@fig:test].

[Inline links](http://www.example.org) are also supported!

```javascript
console.log('Test');
```
: Console caption {#lst:console}

Something is also shown in [@lst:console].

## Heading 1.1

Some more text in a sub heading called heading 1.1. This sub heading belongs to heading 1, which is the heading located
a level higher.

```javascript
console.log('Test');
```
: Console caption 2 {#lst:console2}

# Heading 2

Some text below heading 2.
