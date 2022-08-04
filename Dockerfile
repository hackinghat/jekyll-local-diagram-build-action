FROM openjdk:18-alpine

# Install tools
RUN apk update && apk add graphviz curl ruby-dev jekyll git vim libressl openssl-dev make g++ musl-dev ttf-dejavu
RUN rm -rf /tmp/* /var/cache/apk/*
RUN gem install jekyll bundler
COPY ./plantuml.sh /opt/plantuml/bin/plantuml.sh

RUN mkdir -p /opt/plantuml/lib
RUN \curl -sSL https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar -o /opt/plantuml/lib/plantuml.jar
ENV PATH "$PATH:/opt/plantuml/bin"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ] 

