define install-resource
$(eval $(1) := $(2))
$(eval $(1)_$(2) := $($(1)-check))
$(if $($(1)_$(2)),,$(eval $(1)_$(2) := $($(1)-install)))
endef

define install-state
$(foreach state,$(value $(2)),$(call install-resource,$(1),$(state)))
endef

define clean-resource
$(eval $(1) := $(2))
$(eval $(1)_$(2) := $($(1)-check))
$(if $($(1)_$(2)),$(eval $(1)_$(2) := $($(1)-clean)))
endef

define clean-state
$(foreach state,$(value $(2)),$(call clean-resource,$(1),$(state)))
endef
