FROM quay.io/honestbee/alpinebase:3.5

ENV RUBY_VERSION 2.3.3-r0
ENV BUNDLER_VERSION 1.15.1-r0

RUN apk -U add \
    ruby=$RUBY_VERSION \
    ruby-dev=$RUBY_VERSION \
    ruby-json=$RUBY_VERSION \
    ruby-bundler=$BUNDLER_VERSION \
    ruby-irb=$RUBY_VERSION \
    libpq \
    build-base \
    postgresql-dev \
    libxml2-dev \
    libxslt \
    qt \
    xvfb \
    libffi-dev \
    ruby-bigdecimal \
    imagemagick imagemagick-dev \
    graphviz \
    nodejs
