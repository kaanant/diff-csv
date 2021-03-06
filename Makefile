all: clean test

dev:
	pip install -r requirements.txt -r requirements-dev.txt

# auto correct indentation issues
fix:
	autopep8 diffcsv --recursive --in-place

test:
	pytest --pep8 --cov -s

clean:
	find . -name '*.pyc' -exec rm --force {} +
	find . -name '*.pyo' -exec rm --force {} +
	find . -name '*~' -exec rm --force  {} +

.PHONY: clean test