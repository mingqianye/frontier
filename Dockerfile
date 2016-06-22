FROM ruby:2.3.1

ADD . /app
WORKDIR /app
RUN gem install bundler
RUN bash -l -c "bundle install --without development test"
EXPOSE 8081
ENTRYPOINT bundle exec unicorn -E production -p 8081
