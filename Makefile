REGISTRY       = hex0cter
IMAGE          = alpine-x
VERSION        = $(shell git log --pretty=format:'%h' -n 1)

# docker might or might not require sudo
# # detect this automatically to simplify life a bit
DOCKER=$(shell docker info >/dev/null 2>&1 && echo "docker" || echo "sudo docker")

all: build

build:
	@$(DOCKER) build \
		--pull \
		--rm \
		--squash \
		--tag $(REGISTRY)/$(IMAGE):latest \
		.

run:
	@$(DOCKER) run -it --rm -p 5900:5900 -e DEBUG=true -v /tmp:/tmp --name $(IMAGE) $(REGISTRY)/$(IMAGE):latest sh

shell:
	@$(DOCKER) exec -it $(IMAGE) sh

push: build
	@$(DOCKER) push $(REGISTRY)/$(IMAGE):latest
	@$(DOCKER) tag $(REGISTRY)/$(IMAGE):latest $(REGISTRY)/$(IMAGE):$(VERSION)
	@$(DOCKER) push $(REGISTRY)/$(IMAGE):$(VERSION)
