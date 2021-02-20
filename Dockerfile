FROM ruby:2.5.7 as builder

ENV APP_DIR=/var/www/
ADD Gemfile $APP_DIR
RUN cd $APP_DIR && bundle install

ADD . $APP_DIR

RUN cd $APP_DIR && bundle exec jekyll build
RUN cd $APP_DIR && ls -la && ruby .github/workflows/check-dead-link.rb

FROM nginx:alpine

COPY --from=builder /var/www/_site /usr/share/nginx/html
