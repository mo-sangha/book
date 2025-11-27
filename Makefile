.PHONY: all
all:
	typst watch main.typ book.pdf --font-path ./fonts

# Runs a spellchecker over source files, using "dictionary.txt" for project-specific vocabulary.
# Adding terms in aspell will automatically add to dictionary.txt.
.PHONY: spell
spell:
	LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check chapters/1.typ
	LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check chapters/pointing-out.typ
	LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check chapters/2.typ
	LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check chapters/3.typ
	LANG=en_US.utf8 aspell --home-dir=. --personal=dictionary.txt check chapters/4.typ

.PHONY: clean
clean:
	rm -f book.txt
	rm -f .aspell.en.prepl  # aspell nonsense.
	rm -f chapters/*.bak  # aspell nonsense.
	rm -f chapters/*.new  # aspell nonsense.
