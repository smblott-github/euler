module = $(notdir $(realpath ..))

problems = $(wildcard *.py)
descriptions = $(problems:=/task-description.html)

# This target for SB only.
#
install:
	@$(MAKE) build
	rsync --itemize-changes -a --delete --prune-empty-dirs ./ einstein.computing.dcu.ie:markers/$(module)

build: $(descriptions)
	@true

%.html: %.ascii
	asciidoctor --embedded $<

watch:
	watch -n 1 $(MAKE) install

test:
	echo ok

.PHONY: build install watch test
