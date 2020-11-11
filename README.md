# Pipenv graph ~loop~

> Update: turns out this it NOT A PIPENV BUG. The pipenv graph is also not looping, it just takes a realllyyy long time to complete.

When running `pipenv graph` with given Pipfile and Pipfile.lock it seems that it loops until the end of times.

Prerequisite: docker

Run reproduction script:

```
./reproduce_bug
```
