FROM ruby:2.6.2

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /sushi-guide
WORKDIR /sushi-guide
COPY Gemfile /sushi-guide/Gemfile
COPY Gemfile.lock /sushi-guide/Gemfile.lock
RUN bundle install
COPY . /sushi-guide

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"] 