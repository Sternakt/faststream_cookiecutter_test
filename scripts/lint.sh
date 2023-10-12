#!/bin/bash

echo "Running pyup_dirs..."
pyup_dirs --py38-plus --recursive faststream_cookiecutter_test tests

echo "Running ruff..."
ruff faststream_cookiecutter_test tests --fix

echo "Running black..."
black faststream_cookiecutter_test tests
