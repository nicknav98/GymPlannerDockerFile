FROM python:3.7-slim-buster

RUN mkdir home/app && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y netcat-openbsd gcc python3-dev musl-dev && \
    apt-get clean

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . /home/app


EXPOSE 5050

ENTRYPOINT ["tail", "-f", "/dev/null"]
