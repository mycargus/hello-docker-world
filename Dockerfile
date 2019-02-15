FROM instructure/ruby-passenger:2.6

USER root
WORKDIR /usr/src/app

USER docker
RUN gem install sinatra --no-ri --no-rdoc

USER root
COPY --chown=docker:docker . ./

ENV RACK_ENV=production

EXPOSE 8080

CMD ruby hello.rb -p 80
