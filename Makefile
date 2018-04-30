.PHONY: build release
.DEFAULT_GOAL := build

DOCKER_IMAGE := plippe/rust-build-target

build:
	$(MAKE) \
		build-gl-ar150 

build-%:
	docker build \
		--file dockerfiles/$*.dockerfile \
		--tag $(DOCKER_IMAGE):$* \
		.

release:
	$(MAKE) \
		release-gl-ar150 

release-%:
	docker push $(DOCKER_IMAGE):$*
