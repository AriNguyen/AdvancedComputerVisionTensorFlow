FROM tensorflow/tensorflow:latest

RUN apt-get -y update
RUN apt-get -y install git

WORKDIR /usr/src/project/

COPY requirements.txt ./

CMD pip install -r requirements.txt

COPY . .
