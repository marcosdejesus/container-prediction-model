# Operationalizing a machine learning model
![<marcosdejesus>](https://circleci.com/gh/marcosdejesus/container-prediction-model.svg?style=svg)
## Introduction           
This project deploys a sklearn model for predicting house prices.
First, we containerize the application using docker. Last we deploy the application using Kubernetes.   
## How to run this project
  All the steps will require Bash and Make.
  
  To test the application run the make_prediction bash script
### Running the python application
  To run the python application:
  1. Setup the python environment:
  ``` 
  make setup 
  ```
  2. Update pip and install the requirements:
  ```
  make install
  ```
  3. Run the python application:
  ```
  python app.py
  ```
### Running the application using Docker
To run the application using Docker, it is required to have docker installed
1. Run shell script:
```
./run_docker.sh
```
### Running the application using Kubernetes
To run the application using Kubernetes, it is required to have docker and minikube installed and running.
1. Run the script to deploy the application to kubernetes(It will pull a docker image from my Docker Hub repository):
```
./run_kubernetes.sh
```
## Explaining the files
- app.py

  Python application
- Dockerfile

  Instruction to build the docker image
- Makefile

  Makefile with steps necessary to run the application
- make_prediction.sh

  Bash script that query the running application
- model_data Folder

  Folder for the trained ML model
- requirements.txt

  File with the python modules required by the application
- run_docker.sh

  Bash script that builds the application image and run the container
- run_kubernetes.sh

  Bash script that deploys the application to a kubernete cluster 
- upload_docker.sh

  Bash script that uploads the built docker image to Docker Hub 
