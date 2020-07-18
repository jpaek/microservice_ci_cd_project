[![CircleCI](https://circleci.com/gh/jpaek/microservice_ci_cd_project.svg?style=svg)](https://circleci.com/gh/jpaek/microservice_ci_cd_project)

## Project Overview

This project demonstrate deployment of the docker container to kubernetes and automating the build of it through CircleCI.

---

## Local Setup Commands

```console
$ git clone https://github.com/jpaek/microservice_ci_cd_project.git
$ python3 -m venv ~/.devops
$ source ~/.devops/bin/activate
$ make install
$ brew install hadolint
$ make lint
$ docker -v
$ brew install virtualbox
$ brew install minikube
$ sysctl -a | grep -E --color 'machdep.cpu.features|VMX'
$ kubectl version
$ ./run_docker.sh
$ ./make_prediction.sh  # on new tab
$ ./upload_docker.sh
$ minikube start
$ ./run_kubernetes.sh
$ ./make_prediction.sh # on new tab
$ minikube delete
```

## Files
* app.py: Flask app to make the ML prediction
* Dockerfile: Docker container specification
* run_docker.sh: Script to run the docker
* upload_docker.sh: Uploads the docker container to the docker hub
* run_kubernetes.sh: Deploys the docker container to the local kubernetes pod
* docker_out.txt: Output of prediction made when running the docker container locally
* kubernetes_out.txt: Output of the prediction made when running the kubernetes locally
