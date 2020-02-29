define gen =
  $(eval $(1) = $(shell $(value GEN_$(1))))
endef
