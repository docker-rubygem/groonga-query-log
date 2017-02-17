FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2.3

RUN gem install groonga-query-log --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["groonga-query-log-detect-memory-leak"]
CMD ["--help"]
