FROM ruby:2.5-stretch

ENV APP_HOME /usr/src/app/
WORKDIR $APP_HOME

#RUN apk --no-cache add bash build-base linux-headers
RUN apt update && apt install build-essential unifdef -y

COPY . $APP_HOME

RUN gem install bundler && \
    bundle install
