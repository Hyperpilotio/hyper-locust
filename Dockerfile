FROM python:2.7

RUN pip install influxdb

ADD . /locust
WORKDIR /locust
RUN pip install --upgrade .

EXPOSE 8089 5557 5558

ENTRYPOINT ["locust"]
