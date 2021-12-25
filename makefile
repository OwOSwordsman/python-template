init:
	python3 -m venv venv
	fish -c 'source venv/bin/activate.fish'
	pip3 install -r requirements.txt
