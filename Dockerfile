FROM docker:18.09.6-git

RUN apk update && apk add gcc build-dependencies python-dev py-pip gettext 
RUN pip install -U pip docker-compose==1.24.0
RUN apk del gcc build-dependencies python-dev
