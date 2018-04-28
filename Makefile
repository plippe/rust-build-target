
DOCKER_IMAGE := plippe/rustc-target

build:
	$(MAKE) \
		build-rustup \
		build-gl-ar150 

build-%:
	docker build \
		--file dockerfiles/$*.dockerfile \
		--tag $(DOCKER_IMAGE):$* \
		.