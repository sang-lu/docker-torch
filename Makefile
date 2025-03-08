build:
	docker build -t sanglu/torch:cuda-12.1.1 .

build-push: build
	docker push sanglu/torch:cuda-12.1.1