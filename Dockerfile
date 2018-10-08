FROM docker:git

RUN apk update && apk add py-pip gettext 
RUN pip install -U pip docker-compose
