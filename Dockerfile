# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /PMPU

COPY . .

RUN pip3 install -r requirements.txt

RUN cd frontend/
RUN npm install -i
RUN ./build.sh