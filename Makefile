dockerfiler_reference = dockerizedtools/dockerfiler:v0.1.0

# To make pipefail work
SHELL=/bin/bash

## Runs Dockerfiler: builds and pushes images. Usage: REGISTRY_USERNAME=... REGISTRY_PASSWORD=... make run
run:
	set -o pipefail; docker run -i --rm -e REGISTRY_USERNAME -e REGISTRY_PASSWORD $(dockerfiler_reference) --push < manifest.json | bash

## Runs Dockerfiler: builds images but does not push them. Usage: REGISTRY_USERNAME=... REGISTRY_PASSWORD=... make dry-run
dry-run:
	set -o pipefail; docker run -i --rm -e REGISTRY_USERNAME -e REGISTRY_PASSWORD $(dockerfiler_reference) < manifest.json | bash

## Usage: make test-build target=dockerizedtools/flake8:3.8.3
test-build:
	set -o pipefail; docker run -i --rm $(dockerfiler_reference) --target $(target) < manifest.json | bash
