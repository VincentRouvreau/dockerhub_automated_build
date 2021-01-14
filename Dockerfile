# minimal docker containers for python applications
# https://blog.realkinetic.com/building-minimal-docker-containers-for-python-applications-37d0272c52f3
FROM python:3.7-alpine

# required for numpy
RUN apk add g++

# 1st solution
#RUN pip install numpy pytest
# Not really DRY

# 2nd solution
COPY requirements.txt /
RUN pip install -r /requirements.txt
# How to build the docker image when dockerfile and requirements.txt change ?