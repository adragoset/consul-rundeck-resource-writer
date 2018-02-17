FROM golang:1.9

ADD . /go/src/github.com/adragoset/consul-rundeck-resource-writer

RUN set -ex \
    && cd /go/src/github.com/adragoset/consul-rundeck-resource-writer \
    && go get github.com/kardianos/govendor \
    && govendor install \
    && go install

CMD consul-rundeck-resource-writer
