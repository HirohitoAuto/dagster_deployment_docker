PIPELINE_NAME = pipeline_z_dbt

.PHONY: build
build:
	docker build -t $(PIPELINE_NAME) .

.PHONY: run
run:
	docker run -it --name $(PIPELINE_NAME) 	\
		-p 3000:3000 \
		-v ./jaffle_shop:/opt/dagster/app/jaffle_shop \
		-w /opt/dagster/app/ \
		$(PIPELINE_NAME) bash

.PHONY: clean
clean:
	docker rm $(PIPELINE_NAME)

.PHONY: permissions
permissions:
	sudo chown -R $(whoami):$(whoami) jaffle_shop/
	sudo chmod -R 755 jaffle_shop/
