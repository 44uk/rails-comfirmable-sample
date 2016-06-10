FROM ruby:2.3.1

ENV BUNDLE_PATH /vendor/bundle

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev && apt-get autoclean

RUN mkdir /app
WORKDIR /app

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install -j4

ADD . .

EXPOSE 3000

CMD ["bin/rails", "server", "-p", "3000", "-b", "'0.0.0.0'"]
