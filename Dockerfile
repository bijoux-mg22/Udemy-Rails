FROM ruby:2.4.5
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /UdRails
WORKDIR /UdRails
COPY Gemfile /UdRails/Gemfile
COPY Gemfile.lock /UdRails/Gemfile.lock
RUN bundle install
COPY . /UdRails
