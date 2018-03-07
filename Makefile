SHELL = /bin/bash

build:
	@docker build -t theplant/alpine .

push: build
	docker tag theplant/alpine frankyue/alpine
	docker push frankyue/alpine
