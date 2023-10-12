FROM python:3.9-slim-bullseye

SHELL ["/bin/bash", "-c"]
WORKDIR /project

ADD faststream_cookiecutter_test /project/faststream_cookiecutter_test
COPY pyproject.toml /project/

RUN pip install --no-cache-dir .

CMD ["faststream", "run", "--workers", "1", "faststream_cookiecutter_test.application:app"]
