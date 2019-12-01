FROM ruby:2.6.2

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
        && apt-get install -y nodejs
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client

RUN mkdir /sushi-guide
WORKDIR /sushi-guide
ADD Gemfile /sushi-guide/Gemfile
ADD Gemfile.lock /sushi-guide/Gemfile.lock
RUN bundle install
COPY . /sushi-guide

CMD ["rails", "server", "-b", "0.0.0.0"]