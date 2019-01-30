# -*- Makefile -*-

all: emacs-w3m.html emacs-w3m-ja.html

emacs-w3m.html: emacs-w3m.texi
	rm -f emacs-w3m.html emacs-w3m_*.html
	texi2html -split_node emacs-w3m.texi

emacs-w3m-ja.html: emacs-w3m-ja.texi
	rm -f emacs-w3m-ja.html emacs-w3m-ja_*.html
	texi2html -split_node -lang ja emacs-w3m-ja.texi

texi: emacs-w3m.texi emacs-w3m-ja.texi

emacs-w3m.texi:
	wget https://raw.githubusercontent.com/emacs-w3m/emacs-w3m/master/doc/emacs-w3m.texi

emacs-w3m-ja.texi: $(tarball)
	wget https://raw.githubusercontent.com/emacs-w3m/emacs-w3m/master/doc/emacs-w3m-ja.texi

clean:
	-rm -f version.texi emacs-w3m*.texi emacs-w3m*.html *~
