NETWORKS := web webs

# These are lazilly evaluated.
NETWORK-check = $(shell docker network inspect -f '{{.Id}}' $(NETWORK) 2>/dev/null)
NETWORK-install = $(shell docker network create --driver=overlay --attachable $(NETWORK))
NETWORK-clean = $(shell docker network rm $(NETWORK))

-include state.mk

all:
	@echo NETWORK_web=$(NETWORK_web)
	@echo NETWORK_webs=$(NETWORK_webs)
	$(eval STATE = $(call install-state,NETWORK,NETWORKS))
	@echo NETWORK_web=$(NETWORK_web)
	@echo NETWORK_webs=$(NETWORK_webs)
	$(eval CLEAN = $(call clean-state,NETWORK,NETWORKS))
	@echo NETWORK_web=$(NETWORK_web)
	@echo NETWORK_webs=$(NETWORK_webs)
