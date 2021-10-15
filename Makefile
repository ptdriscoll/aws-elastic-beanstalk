install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv application_test.py
	python main_test.py

lint:
	pylint --disable=R,C application.py

deploy:
	eb init 
	echo "Deploying app"
	eb deploy hello-env

all: install lint test 
