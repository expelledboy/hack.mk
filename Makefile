all: test

test: *.spec.mk

.PHONY: *.spec.mk
*.spec.mk:
	make -f $@
