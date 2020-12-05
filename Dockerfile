FROM ruby:2.5.7 as builder

ENV APP_DIR=/var/www/
ADD Gemfile $APP_DIR
RUN cd $APP_DIR && bundle install

ADD . $APP_DIR

RUN cd $APP_DIR && bundle exec jekyll build && bundle exec htmlproofer ./_site --only-4xx --allow-hash-href

FROM nginx:alpine

COPY --from=builder /var/www/_site /usr/share/nginx/html
