# Pipenv graph loop

When running `pipenv graph` with given Pipfile and Pipfile.lock it seems that it loops until the end of times.

Prerequisite: docker

Run reproduction script:

```
./reproduce_bug
```
