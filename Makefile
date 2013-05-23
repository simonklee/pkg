all: clean-pyc test

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

test:
	@nosetests -w tests

test_setup:
	@python scripts/test_setup.py

toxtest:
	@tox

pkg/_speedups.so: pkg/_speedups.pyx
	cython pkg/_speedups.pyx
	python setup.py build
	cp build/*/pkg/_speedups*.so pkg

cybuild: pkg/_speedups.so

.PHONY: test clean-pyc cybuild all
