SHELL = /bin/bash

test:
	@if test -z "$(VERSION)"; then echo "error VERSION is undefined, you can set VERSION=1.0"; exit 1; fi

build: test
	@echo "build theplant/alpine:$(VERSION) ..."
	@docker build -t "theplant/alpine:$(VERSION)" .

push: build
	docker tag "theplant/alpine:$(VERSION)" "public.ecr.aws/theplant/alpine:$(VERSION)"
	docker push "public.ecr.aws/theplant/alpine:$(VERSION)"
