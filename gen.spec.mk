-include gen.mk

# Generate function
GEN_RANDOM_INT = od -vAn -N2 -tu2 < /dev/urandom

all:
	@echo RANDOM_INT=$(RANDOM_INT)
	$(call gen,RANDOM_INT)
	@echo RANDOM_INT=$(RANDOM_INT)
	$(call gen,RANDOM_INT)
	@echo RANDOM_INT=$(RANDOM_INT)
