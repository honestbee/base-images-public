FROM debian:9-slim

ENV BIN_PATH=/usr/local/bin
ENV HELM_VERSION=2.8.2

RUN apt-get update && \
apt-get install git curl iputils-ping dnsutils traceroute -y

RUN curl -L https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz | tar -xzC ${BIN_PATH}/ && \
  mv $BIN_PATH/linux-amd64/helm $BIN_PATH/ && \
  rm -rf $BIN_PATH/linux-amd64/
