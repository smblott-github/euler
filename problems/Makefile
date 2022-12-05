module = $(notdir $(realpath ..))

# This target for SB only.
#
install:
	rsync --itemize-changes -a --delete --prune-empty-dirs ./ einstein.computing.dcu.ie:markers/$(module)

%.html: %.ascii
	asciidoctor --embedded $<

watch:
	watch -n 1 $(MAKE) install

test:
	zsh .bin/run-tests

.PHONY: install watch test
