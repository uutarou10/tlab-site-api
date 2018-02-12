FROM ruby:2.5

ENV APP_ROOT /usr/local/src/tlab-site-api
RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN cd $APP_ROOT && bundle install
COPY . $APP_ROOT

EXPOSE 3000
VOLUME $APP_ROOT/db

CMD ["bash", "scripts/start.sh"]
