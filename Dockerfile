FROM ruby:2.5.7

ENV APP_DIR=/var/www/
ADD Gemfile $APP_DIR
RUN cd $APP_DIR && bundle install

ADD . $APP_DIR

RUN cd $APP_DIR && $APP_DIR/scripts/cibuild
