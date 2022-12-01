bin_dir = /usr/local/bin

# It is not recommended that you install all of the scripts in this directory,
# just the ones listed below.
#
src = show-exec-command
dst = $(addprefix $(bin_dir)/, $(src))

install: $(dst)
	@true

$(bin_dir)/%: %
	sudo install -v -m 0555 $< $@

.PHONY: install
