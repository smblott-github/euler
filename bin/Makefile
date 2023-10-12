bin_dir = /usr/local/bin

src = $(wildcard [a-z]*)
dst = $(addprefix $(bin_dir)/, $(src))

install: $(dst)
	@true

$(bin_dir)/%: %
	sudo install -v -m 0555 $< $@

pull:
	rsync -ai ~/projects/einstein/user-scripts/runner .
	chmod a+x runner
	rsync -ai ~/projects/einstein/docker/docker-image/res/c-marker .
	chmod a+x c-marker

.PHONY: install pull
