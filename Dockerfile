FROM python:3.6-alpine

COPY requirements.txt /tmp/requirements.txt

RUN apk update \
    && apk add gcc g++ make sqlite-dev postgresql-dev python3-dev \
    && cat /tmp/requirements.txt | xargs -n1 -t pip install -U \
    && python -m nltk.downloader punkt wordnet averaged_perceptron_tagger
