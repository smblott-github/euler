install:
	$(MAKE) -C web install

test:
	$(MAKE) -C problems test

.PHONY: install test
