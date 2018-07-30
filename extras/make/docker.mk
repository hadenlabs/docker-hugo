# Docker
.PHONY: docker.help docker.build

docker: docker.help

docker.help:
	@echo '    Docker:'
	@echo ''
	@echo '        docker.build         build all or one example: make docker.build version={{version}}  args=(--pull|...)'
	@echo ''

docker.build: clean
	@echo $(MESSAGE) "Building docker: ${version}"
	@if [ -n "${version}" ]; then \
		docker build --build-arg version=${version} --no-cache -t hadenlabs/hugo:${version} -f Dockerfile .; \
		docker login; \
		docker push hadenlabs/hugo:${version}; \
	fi

