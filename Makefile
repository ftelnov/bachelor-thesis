.PHONY: build
build:
	mkdir -p build
	bash r.sh

.PHONY: watch
watch:
	find src/ | entr -cp make build
