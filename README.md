<include a CircleCI status badge, here>

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Setup the Environment

- Create a virtualenv `python3 -m venv ~/.devops` and activate it `source ~/.devops`
- Run `make install` to install the necessary dependencies

### Running localhost:8000 `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`
4. Upload to docker hub: `./upload_docker.sh`

### Files

- `app.py` API logic
- `requirements.txt` Python dependencies
- `Makefile` defines set of tasks to be executed
- `Dockefile` Docker commands
- `model_data/` ml model
- `output_txt_files/` Sample outputs
