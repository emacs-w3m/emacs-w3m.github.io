# -*- Makefile -*-

tarball = $(shell ls -1t ../emacs-w3m-*.tar.gz|head -1)

all: emacs-w3m.html emacs-w3m-ja.html node.db

node.db: makedb emacs-w3m.html emacs-w3m-ja.html
	perl $< node.db

emacs-w3m.html: texi2html emacs-w3m.texi version.texi
	rm -f emacs-w3m.html emacs-w3m_*.html
	perl texi2html -split_node emacs-w3m.texi

emacs-w3m-ja.html: texi2html emacs-w3m-ja.texi version.texi
	rm -f emacs-w3m-ja.html emacs-w3m-ja_*.html
	perl texi2html -split_node emacs-w3m-ja.texi

texi: emacs-w3m.texi emacs-w3m-ja.texi

version.texi: $(tarball)
	basename $(tarball) .tar.gz | sed 's/^emacs-w3m-/@set VERSION /' > $@

emacs-w3m.texi: $(tarball)
	tar xzOf $(tarball) `tar tzf $(tarball)|grep $@` > $@

emacs-w3m-ja.texi: $(tarball)
	tar xzOf $(tarball) `tar tzf $(tarball)|grep $@` | nkf -Je > $@

clean:
	-rm -f version.texi emacs-w3m*.texi emacs-w3m*.html node.db *~
