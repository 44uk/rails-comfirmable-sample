FROM ruby:2.5-slim
WORKDIR /opt/project
RUN apt-get update -y && apt-get install -y --no-install-recommends \
  build-essential \
  libsqlite3-dev \
  sqlite3 \
  nodejs \
  && gem install bundler
ADD ./ .
RUN bin/setup
ENTRYPOINT ["bin/rails"]
CMD ["server"]
