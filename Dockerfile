FROM ruby:2.7.1

ARG UID
RUN adduser rails --uid $UID --disabled-password --gecos ""

ENV APP /home/app
RUN mkdir $APP
RUN mkdir /usr/src/app
RUN mkdir /usr/src/app/tmp
RUN mkdir /usr/src/app/tmp/cache
RUN mkdir /usr/src/app/tmp/cache/bootsnap
RUN mkdir /usr/src/app/tmp/cache/bootsnap/compile-cache
RUN chmod -R 777 $APP
RUN chmod -R 777 /usr/src/app/tmp/cache/bootsnap/compile-cache
RUN chown -R rails:rails $APP
RUN chown -R rails:rails /usr/src/app/tmp/cache/bootsnap/compile-cache
WORKDIR $APP

COPY Gemfile* $APP/
RUN bundle install

RUN rails g devise:install

COPY . $APP/

USER rails

CMD ["rails", "server", "-p", "8080", "-b", "0.0.0.0"]