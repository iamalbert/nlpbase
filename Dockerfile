FROM python:3.6-slim-stretch

COPY requirements.txt /tmp/requirements.txt

RUN cat /tmp/requirements.txt | xargs -n1 -t pip install -U \
    && python -m nltk.downloader all
