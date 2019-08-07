#FROM debian
FROM ubuntu:16.04
FROM gcc:4.9
FROM python:3.5
#RUN apt-get install python-scikit-learn
COPY . /home/tcs/Desktop/ram_docker/datasets-for-churn-telecom/docker_folder
WORKDIR /home/tcs/Desktop/ram_docker/datasets-for-churn-telecom/docker_folder
#RUN apt-get install python-scikit-learn
#RUN gcc -o image_docker 1.c
#CMD ["./filej"]
#RUN apt-get update && apt-get install -y software-properties-common
#RUN add-apt-repository universe
#RUN apt-get update && apt-get install -y python3-pip
#RUN apt-get install sudo
#CMD ["apt-get", "install", "sudo"]
#CMD ["apt-get", "install", "pip"]
RUN apt-get install -y python3.5
#RUN apt install python3-pip
#RUN apt-get install python3-numpy
#RUN apt-get install python3-pandas
#RUN apt-get install python3-warnings
#RUN apt-get install python3-scikit-learn
#RUN apt-get install python-pip
#RUN pip install pystrich
#RUN python3.5 -m pip install warnings
#RUN python3.5 -m pip install numpy
#RUN python3.5 -m pip install pandas
#RUN python3.5 -m pip install scikit-learn
#RUN python3.5 -m pip install scikit-learn
#RUN python3 flask_api.py
#COPY requirements.txt /home/datasets-for-churn-telecom/docker_folder
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "telecom.py"]
