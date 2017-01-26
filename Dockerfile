FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /toy_app
WORKDIR /toy_app
ADD Gemfile /toy_app/Gemfile
ADD Gemfile.lock /toy_app/Gemfile.lock
RUN bundle install
ADD . /toy_app
