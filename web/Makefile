mod = $(notdir $(realpath ..))

ascii = $(wildcard *.ascii)
slidy = $(wildcard *.slidy)
html = $(patsubst %.ascii, %.html, $(ascii)) $(patsubst %.slidy, %.html, $(slidy))

tasks = $(shell ls -d ../problems/[a-z]*.py)
task_names = $(notdir $(tasks))
html += $(task_names:.py=.html)

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
	echo $(task_htmls)

# SB uses `asciidoc-wrapper`, but CI uses just `asciidoctor`.
#
ad_wrapper = $(shell which asciidoc-wrapper)
ad_wrapper := $(if $(ad_wrapper), $(ad_wrapper), asciidoctor)

%.html: %.ascii
	asciidoctor \
	  -a stylesheet=$(HOME)/projects/asciidoctor/src/stylesheets/asciidoctor.css \
	  -a source-highlighter=pygments -a icons=font $<

%.py.html: %.py
	source-highlight $<

watch:
	watch -n 1 $(MAKE) install

%.ascii: ../problems/%.py/task-description.ascii
	zsh install-task-description.zsh $< $@

.PHONY: build install watch clean
