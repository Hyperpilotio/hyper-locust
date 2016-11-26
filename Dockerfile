FROM wen777/ubuntu1404-locust-base
# FROM ubuntu:14.04
# Reference from github.com/hakobera/docker-locust

# RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential curl libncursesw5-dev libreadline-dev libssl-dev libgdbm-dev libc6-dev libsqlite3-dev libxml2-dev libxslt-dev python python-dev python-setuptools python-pip libzmq && apt-get clean
RUN apt-get install -y libzmq-dev pkg-config
# RUN pip install pyzmq

ADD . /locust
WORKDIR /locust
RUN pip install --user --upgrade .

EXPOSE 8089 5557 5558

CMD locust
