install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
lint:
	pylint --disable=R,C main.py		

test:
	#python -m pytest -vv --cov=main main_test.py
	python main_test.py
	
deploy:
	echo "Deploying app"
	eb deploy aws-elastic-beanstalk	

all: install lint test