FROM python:2.7.14-alpine3.7

RUN apk update
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing fontforge
RUN apk add --no-cache make git

WORKDIR /usr/src/app

RUN git clone https://github.com/ToxicFrog/Ligaturizer.git .
RUN rm -rf /usr/src/app/input-fonts/
RUN rm -rf /usr/src/app/output-fonts/

CMD ["make"]
