ARG python_version:3.11-alpine

FROM --platform=linux/amd64 python:${python_version}

ENV POETRY_HOME="/opt/poetry/home" \
    POETRY_CACHE_DIR="/opt/poetry/cache" \
    POETRY_NO_INTERACTION=1 \
    POETRY_VIRTUALENVS_IN_PROJECT=false

ENV PATH="${POETRY_HOME}/bin:${PATH}"

RUN apk add --no-cache poetry