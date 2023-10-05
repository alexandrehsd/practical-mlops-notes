# globals
PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = practical-mlops
PYTHON_VERSION_FULL = $(shell python --version 2>&1)
PIP_VERSION_FULL = $(wordlist 1,2,$(shell pip --version 2>&1))

# custom targets
.PHONY: environment
# setup python environment
environment:
	pyenv install -s 3.10.12 ;\
	pyenv virtualenv 3.10.12 practical-mlops ;\
	pyenv local practical-mlops

.PHONY: requirements
# install core requirements
requirements:
	pip install --upgrade pip
	pip install pdm
	pdm install