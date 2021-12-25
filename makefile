run:
	python3 src/main.py

init:
	fish -c 'python3 -m venv venv;\
	source venv/bin/activate.fish;\
	pip3 install -r requirements.txt'
