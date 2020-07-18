SHELL := /bin/bash

build-images:
	# build image example1
	docker build -t example1:0.1 -f example1/Dockerfile example1

	# build image example2
	docker build -t example2:0.1 -f example2/Dockerfile example2
	
	# build image proxy
	docker build -t proxy:0.1 -f proxy/Dockerfile proxy

run-docker:
	docker rm -f example1.com || true
	docker run -d --name example1.com \
		-v ${PWD}/example1/example1.conf:/etc/nginx/conf.d/example1.conf example1:0.1

	docker rm -f example2.com || true
	docker run -d --name example2.com \
		-v ${PWD}/example2/example2.conf:/etc/nginx/conf.d/example2.conf example2:0.1

	docker rm -f proxy || true
	docker run -d --name proxy \
		-v ${PWD}/proxy/proxy.conf:/etc/nginx/conf.d/proxy.conf \
		--link example2.com --link example1.com \
		-p 80:80 proxy:0.1