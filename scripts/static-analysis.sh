#!/bin/bash
set -e

echo "Running mypy..."
mypy faststream_cookiecutter_test

echo "Running bandit..."
bandit -c pyproject.toml -r faststream_cookiecutter_test
