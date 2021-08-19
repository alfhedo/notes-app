FROM ruby:3.0.1-alpine

WORKDIR /usr/src/app

COPY . .

RUN apt-get update -y \
  && apt-get install -y npm \
  && npm install -g yarn

RUN bundle install

RUN rails db:setup && rails webpacker:install

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]
