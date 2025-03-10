build-cuda-118:
	docker build -t sanglu/torch:cuda-11.8.0 -f cuda-118.Dockerfile .

build-push-cuda-118: build-cuda-118
	docker push sanglu/torch:cuda-11.8.0

build-cuda-121:
	docker build -t sanglu/torch:cuda-12.1.0 -f cuda-121.Dockerfile .

build-push-cuda-121: build-cuda-121
	docker push sanglu/torch:cuda-12.1.0
