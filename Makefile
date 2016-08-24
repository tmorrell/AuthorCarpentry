#
# Simple Makefile for generate website with shorthand and md2slides
#
build: README.md page.tmpl
	./mk-website.bash

save:
	git commit -am "Quick Save"
	git push origin master

publish:
	./publish.bash

