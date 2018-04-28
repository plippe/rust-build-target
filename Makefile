
DOCKER_IMAGE := plippe/rustc-target

build:
	$(MAKE) build-rustup

build-%:
	docker build \
		--file dockerfiles/$*.dockerfile \
		--tag $(DOCKER_IMAGE):$* \
		.