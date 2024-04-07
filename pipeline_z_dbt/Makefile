PIPELINE_NAME = pipeline_z_dbt

.PHONY: build
build:
	docker compose build

.PHONY: up
up: 
	docker-compose up -d && docker compose exec $(PIPELINE_NAME) bash

.PHONY: down
down:
	docker compose down $(PIPELINE_NAME)