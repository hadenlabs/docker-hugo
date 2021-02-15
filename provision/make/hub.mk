# hub
.PHONY: hub.help

hub: hub.help

hub.help:
	@echo '    Hub:'
	@echo ''
	@echo '        hub.build         build $(IMAGE), one example: make hub.build version={{0.80.0}}'
	@echo '        hub.push          push $(IMAGE) to docker hub, example make hub.push version={{0.80.0}}'
	@echo ''

hub.build:
	@echo " =====> Building $(IMAGE):${version}..."
	@if [ -z ${version} ]; then \
		$(docker-build) $(IMAGE):latest images/${VERSION} ;\
	else \
		$(docker-build) $(IMAGE):${version} images/${version} ;\
	fi

hub.push:
	@echo " =====> Push $(IMAGE):${version}..."
	@if [ -z ${version} ]; then \
		$(docker-push) $(IMAGE):latest ;\
	else \
		$(docker-push) $(IMAGE):${version} ;\
	fi