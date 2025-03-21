install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test.py

format:
	black *.py

lint:
	pylint --disable=R,C add.py

all: install lint test
