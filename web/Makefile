mod = $(notdir $(realpath ..))

ascii = $(wildcard *.ascii)
slidy = $(wildcard *.slidy)
html = $(patsubst %.ascii, %.html, $(ascii)) $(patsubst %.slidy, %.html, $(slidy))

descriptions = $(wildcard ../problems/*/task-description.ascii)
directories = $(realpath $(dir $(descriptions)))
task_names = $(notdir $(directories))

html += $(addsuffix .html, $(task_names))

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
	$(MAKE) build
	rsync -av $(rsync_options) ./ einstein:web/$(mod)/

# SB uses `asciidoc-wrapper`, but CI uses just `asciidoctor`.
#
ad_wrapper = $(shell which asciidoc-wrapper)
ad_wrapper := $(if $(ad_wrapper), $(ad_wrapper), asciidoctor)

%.html: %.ascii
	$(ad_wrapper) $<

index.html: problems.ascii index.ascii
	$(ad_wrapper) index.ascii

problems.ascii: $(addsuffix .ascii, $(task_names))
	zsh build-problems-index.zsh $(task_names) > $@

%.py.html: %.py
	source-highlight $<

%.ascii: ../problems/%/task-description.ascii
	zsh install-task-description.zsh $< $@

watch:
	watch -n 1 $(MAKE) install

.PHONY: build install watch
