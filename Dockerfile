FROM ruby:2.5.3-stretch

#RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . .
CMD ["rails", "server", "-b", "0.0.0.0"]
