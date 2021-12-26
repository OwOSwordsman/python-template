run:
	pipenv run python3 src/main.py

init:
	PIPENV_VENV_IN_PROJECT=1 pipenv install --ignore-pipfile

initdev:
	PIPENV_VENV_IN_PROJECT=1 pipenv install --ignore-pipfile --dev

check:
	pipenv run black src/
	pipenv run pylint src/
	pipenv run flake8 src/
	pipenv run mypy src/

test:
	pipenv run pytest tests/

new_test:
	echo -e '"""code testing"""\nimport sys\nimport pathlib\nimport pytest\n\nsys.path.append(str(pathlib.Path(__file__).parent.parent.joinpath("./src")))\nfrom lib import lib\n\n\ndef test_example():\n\t"""example test"""\n\tassert lib.run() is None\n' >> tests/test.py
