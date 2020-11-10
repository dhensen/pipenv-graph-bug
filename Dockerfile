FROM python:3.6-alpine

RUN mkdir /foo
COPY Pipfile Pipfile.lock /foo/
WORKDIR /foo
RUN apk add --no-cache build-base
RUN pip install pipenv==2020.8.13 && pipenv install --dev

ENV PYTHONUNBUFFERED=1
CMD ["pipenv", "graph"]

