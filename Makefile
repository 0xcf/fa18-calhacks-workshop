BIN := venv/bin
PYTHON := $(BIN)/python
SOURCES := app.py
vers ?= latest
DOCKER_TAG := fa18-calhacks-$(USER)


venv: requirements.txt
	python3 -m virtualenv -ppython3 venv
	$(PYTHON) -m pip install -r requirements.txt

clean:
	rm -rf venv
	docker images | awk '/$(DOCKER_TAG)/ { print $$3 }' | xargs -I {} docker rmi {}

build: Dockerfile requirements.txt $(SOURCES)
	docker build -t fa18-calhacks-$(USER):$(vers) .

.PHONY: dev
dev: venv
	$(PYTHON) -m flask run

.PHONY: docker-run
docker-run: build
	docker run --rm -p 5000:5000 fa18-calhacks-$(USER):$(vers)
