# -- Go Builder Image --
FROM golang:1.9-alpine AS builder

ENV DEP_VERSION=0.4.1

RUN apk add --no-cache git curl pkgconf alpine-sdk libgit2 libgit2-dev cmake clang clang-dev make gcc g++ libc-dev linux-headers
RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v${DEP_VERSION}/dep-linux-amd64 && chmod +x /usr/local/bin/dep
RUN git clone https://github.com/honestbee/mbt.git /go/src/mbt

WORKDIR /go/src/mbt

# https://github.com/golang/dep/blob/master/docs/FAQ.md#how-do-i-use-dep-with-docker
RUN set -ex \
  && make build

FROM golang:1.9-alpine

ENV DEP_VERSION=0.4.1

RUN set -ex \
  && apk add --no-cache bash ca-certificates git curl

RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v${DEP_VERSION}/dep-linux-amd64 && chmod +x /usr/local/bin/dep

RUN go get github.com/mitchellh/gox
COPY --from=builder /go/src/mbt/build/mbt_linux_x86_64 $GOPATH/bin/mbt

CMD bash
