# Use python3 by default; override with `make PYTHON=python` if needed.
PYTHON ?= python3

.PHONY: verify test clean

# verify runs the repository's test suite (the same tests exercised in CI).
verify: test

test:
	cd test && $(PYTHON) test_baggage.py

clean:
	find . -type d -name '__pycache__' -prune -exec rm -rf {} +
