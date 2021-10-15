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
	eb init flask-auto-deploy-env
	eb deploy flask-auto-deploy-env

all: install lint test 
