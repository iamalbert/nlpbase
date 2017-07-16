FROM python:3.6.1


COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt
RUN python -m nltk.downloader all

