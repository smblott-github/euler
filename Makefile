install:
	$(MAKE) -C web install
	$(MAKE) -C problems install

.PHONY: install
