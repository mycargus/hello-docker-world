FROM instructure/ruby-passenger:2.6

USER root

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

USER docker
RUN gem install sinatra --no-ri --no-rdoc

USER root
COPY --chown=docker:docker . ./

ENV RACK_ENV=production

EXPOSE 80

CMD ruby hello.rb -p 80
