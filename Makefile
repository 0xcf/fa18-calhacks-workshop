BIN := venv/bin
PYTHON := $(BIN)/python
vers ?= latest

venv: requirements.txt
	python3 -m virtualenv -ppython3 venv
	$(PYTHON) -m pip install -r requirements.txt

clean:
	rm -rf venv

build: Dockerfile
	docker build -t fa18-calhacks-$(USER):$(vers) .

.PHONY: dev
dev: venv
	$(PYTHON) -m flask run
