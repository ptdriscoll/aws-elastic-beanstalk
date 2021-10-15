install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv application_test.py
	python main_test.py

lint:
	pylint --disable=R,C application.py

deploy:
	echo "Deploying app"
	eb init -p python-3.7 flask-codebuild
	eb deploy flask-codebuild

all: install lint test 
