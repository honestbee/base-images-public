FROM golang:1.8

ENV GLIDE_VERSION v0.12.3

RUN curl -Lo /tmp/glide.tgz https://github.com/Masterminds/glide/releases/download/$GLIDE_VERSION/glide-$GLIDE_VERSION-linux-amd64.tar.gz \
    && tar -C /usr/bin -xzf /tmp/glide.tgz --strip=1 linux-amd64/glide \
    && rm /tmp/glide.tgz

