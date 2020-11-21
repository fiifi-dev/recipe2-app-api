FROM python:3.8

ENV PYTHONUNBUFFERED=1

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt

COPY ./app /app

RUN useradd -ms /bin/bash user
USER user