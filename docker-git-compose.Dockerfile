FROM docker:18.09.6-git

RUN apk update && apk add py-pip gettext jq
RUN pip install -U pip docker-compose==1.23.2
