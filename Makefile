# Makefile for the W3C Baggage specification repository.
#
# `verify` runs the reference-implementation test suite (the same tests run by
# CI in .github/workflows/tests.yml). `clean` removes generated artifacts.

# Prefer `python3`, but fall back to `python` when that is the only binary.
PYTHON ?= $(shell command -v python3 || command -v python)

.PHONY: verify test clean

verify: test

test:
	cd test && $(PYTHON) test_baggage.py

clean:
	find . -type d -name __pycache__ -prune -exec rm -rf {} +
	find . -type f -name '*.pyc' -delete
