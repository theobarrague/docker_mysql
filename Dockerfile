FROM alpine:latest

ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE

RUN apk update \
  && apk upgrade \
  && apk add ruby mariadb \
  && gem install tiller

COPY app/ /

EXPOSE 3306

CMD [ "tiller", "-v" ]