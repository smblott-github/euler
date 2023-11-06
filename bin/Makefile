bin_dir = /usr/local/bin

src = $(wildcard [a-z]*)
dst = $(addprefix $(bin_dir)/, $(src))

install: $(dst)
	@true

$(bin_dir)/%: %
	sudo install -v -m 0555 $< $@

pull:
	zsh Makefile.pull.zsh

.PHONY: install pull
