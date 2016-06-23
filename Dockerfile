FROM ruby:2.3.1
MAINTAINER mingqian.ye@gmail.com

RUN apt-get update
RUN apt-get install -y nodejs

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN gem install bundler
RUN bundle install --without development test

ADD . /app
WORKDIR /app

ENV RAILS_ENV=production
RUN bundle exec rake assets:precompile
CMD bundle exec unicorn -E production -p 8080
EXPOSE 8080
