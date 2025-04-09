FROM docker.io/ruby:3.3.7-alpine

ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /home/minitrue_example

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    bash \
    build-base \
    libgit2 \
    gpg \
    gpgme \
    tzdata

COPY Gemfile* .

RUN bundle update --bundler && \
    bundle config set --local path $GEM_HOME && \
    bundle check || bundle install && \
    bundle package

RUN rm -rf "$GEM_HOME/vendor"
RUN date -u > BUILD_TIME

COPY . /home/minitrue_example


