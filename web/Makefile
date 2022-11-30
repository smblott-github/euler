mod = $(notdir $(realpath ..))

ascii = $(wildcard *.ascii)
slidy = $(wildcard *.slidy)
html = $(patsubst %.ascii, %.html, $(ascii)) $(patsubst %.slidy, %.html, $(slidy))

build: $(html)
	@true

rsync_options  = --delete --delete-excluded
rsync_options += --exclude="notes"
rsync_options += --exclude="labexams"
rsync_options += --exclude="labsheets"
rsync_options += --exclude="*.ascii"
rsync_options += --exclude="*.slidy"
rsync_options += --exclude="Makefile"
rsync_options += --exclude="recent.html"

install: $(html)
	rsync -av $(rsync_options) ./ einstein:web/$(mod)/

%.html: %.ascii
	asciidoc-wrapper $<

%.html: %.slidy
	slidy-wrapper $<

%.py.html: %.py
	source-highlight $<

watch:
	watch -n 1 $(MAKE) install

clean:
	-rm -v *.html

.PHONY: build install watch clean
