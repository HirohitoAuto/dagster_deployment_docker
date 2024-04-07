.PHONY: build
build:
	docker build -t pipeline-x ./pipeline_x/
	docker build -t pipeline-y ./pipeline_y/
	docker build -t dagster .

.PHONY: up
up:
	docker-compose down
	docker-compose up -d
	sleep 3
	open http://localhost:3000

.PHONY: down
down:
	docker-compose down
