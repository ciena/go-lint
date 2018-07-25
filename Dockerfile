FROM golang:1.9-alpine
MAINTAINER David Bainbridge <dbainbri@ciena.com>
VOLUME /go/src
RUN apk --update add git
WORKDIR /go
RUN go get -u golang.org/x/lint/golint

COPY golint-entry-point /golint-entry-point
RUN chmod 755 /golint-entry-point
ENTRYPOINT [ "/golint-entry-point" ]
