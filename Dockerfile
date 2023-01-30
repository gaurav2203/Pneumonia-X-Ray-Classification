#FROM python:3.8-slim-buster

FROM tensorflow/tensorflow:latest

#RUN apt-get update

RUN mkdir /Project
WORKDIR /Project 

RUN pip3 install --upgrade pip

COPY requirements.txt ./
RUN pip install  -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3", "./app.py"]


