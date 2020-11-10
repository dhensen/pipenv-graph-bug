FROM python:3.6-alpine

ARG TEST_PIPENV_VERSION=2020.8.13
RUN mkdir /foo
COPY Pipfile Pipfile.lock /foo/
WORKDIR /foo
RUN apk add --no-cache build-base
RUN echo "installing pipenv version $TEST_PIPENV_VERSION"
RUN pip install pipenv==$TEST_PIPENV_VERSION
RUN pipenv install --dev

CMD ["pipenv", "graph"]
