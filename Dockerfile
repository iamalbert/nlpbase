FROM docker:git

RUN apk update && apk add py-pip gettext && pip install -U pip docker-compose
