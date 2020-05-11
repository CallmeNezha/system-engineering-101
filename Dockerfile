FROM ruby:2.7
WORKDIR /
COPY ./Gemfile /Gemfile
COPY ./Gemfile.lock /Gemfile.lock
RUN bundler install
EXPOSE 4000

