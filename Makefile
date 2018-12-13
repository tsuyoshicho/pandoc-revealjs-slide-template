doc/index.html : slide.md
	pandoc --standalone --self-contained --to=revealjs --slide-level=2 --mathjax -V transition=fade --output=$@ $<

all : doc/index.html
