run:
	python3 src/main.py

init:
	fish -c 'python3 -m venv venv;\
	source venv/bin/activate.fish;\
	pip3 install -r requirements.txt'

check:
	black src/
	pylint src/
	flake8 src/
	mypy src/

test:
	pytest

new_test:
	echo -e '"""code testing"""\nimport sys\nimport pathlib\nimport pytest\n\nsys.path.append(str(pathlib.Path(__file__).parent.parent.joinpath("./src")))\nfrom lib import lib\n\n\ndef test_example():\n\t"""example test"""\n\tassert lib.run() is None\n' >> tests/test.py
