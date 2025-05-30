build-118:
	docker build -t sanglu/torch:cuda-11.8.0 -f cuda-118.Dockerfile .

build-push-118: build-118
	docker push sanglu/torch:cuda-11.8.0

build-121:
	docker build -t sanglu/torch:cuda-12.1.1 -f cuda-121.Dockerfile .

build-push-121: build-121
	docker push sanglu/torch:cuda-12.1.1

build-124:
	docker build -t sanglu/torch:cuda-12.4.1 -f cuda-124.Dockerfile .

build-push-124: build-124
	docker push sanglu/torch:cuda-12.4.1

build-128:
	docker build -t sanglu/torch:cuda-12.8.1 -f cuda-128.Dockerfile .

build-push-128: build-128
	docker push sanglu/torch:cuda-12.8.1

build-all: build-118 build-121 build-124 build-128
build-push-all: build-push-118 build-push-121 build-push-124 build-push-128
