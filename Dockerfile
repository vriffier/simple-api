FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile* /app/
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . /app
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]