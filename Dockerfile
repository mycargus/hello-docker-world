FROM instructure/ruby-passenger:2.3

USER root

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN gem install sinatra --no-ri --no-rdoc

COPY . $APP_HOME

ENV RACK_ENV=production

EXPOSE 80

CMD ruby hello.rb -p 80
