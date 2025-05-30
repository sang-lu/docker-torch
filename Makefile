build-cuda-118:
	docker build -t sanglu/torch:cuda-11.8.0 -f cuda-118.Dockerfile .

build-push-cuda-118: build-cuda-118
	docker push sanglu/torch:cuda-11.8.0

build-cuda-121:
	docker build -t sanglu/torch:cuda-12.1.1 -f cuda-121.Dockerfile .

build-push-cuda-121: build-cuda-121
	docker push sanglu/torch:cuda-12.1.1

build-cuda-124:
	docker build -t sanglu/torch:cuda-12.4.1 -f cuda-124.Dockerfile .

build-push-cuda-124: build-cuda-124
	docker push sanglu/torch:cuda-12.4.1

build-cuda-128:
	docker build -t sanglu/torch:cuda-12.8.1 -f cuda-128.Dockerfile .

build-push-cuda-128: build-cuda-128
	docker push sanglu/torch:cuda-12.8.1
