all: build push

build:
	docker build --no-cache=true --build-arg BUILD_DATE=$(shell date -u +'%Y-%m-%d') -t theobarrague/mysql:latest .

push:
	docker push theobarrague/mysql:latest