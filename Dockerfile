# See Dockerfile.build for instructions on bumping this.
ARG BASE_IMAGE=ghcr.io/py-cov-action/python-coverage-comment-action-base:v6
FROM $BASE_IMAGE

COPY coverage_comment ./coverage_comment
RUN md5sum -c pyproject.toml.md5 || pip install -e .
