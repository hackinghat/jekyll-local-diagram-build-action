FROM amazoncorretto:18-alpine as corretto-jdk

# required for strip-debug to work
RUN apk add --no-cache binutils curl

WORKDIR /plantuml
RUN \curl -sSL https://github.com/plantuml/plantuml/releases/download/v1.2022.6/plantuml-1.2022.6.jar -o ./plantuml.jar

# Identify dependencies
RUN $JAVA_HOME/bin/jdeps \
    --ignore-missing-deps \
    --print-module-deps \
    -q \
    --recursive \
    --multi-release 18 \
    ./plantuml.jar > ./deps.info

# Build small JRE image
RUN $JAVA_HOME/bin/jlink \
    --verbose \
    --add-modules $(cat ./deps.info) \
    --strip-debug \
    --no-man-pages \
    --no-header-files \
    --compress=2 \
    --output ./customjre

# main app image
FROM alpine:latest
RUN apk add --no-cache ttf-dejavu graphviz ruby-dev jekyll git libressl openssl-dev make g++ musl-dev npm chromium 

ENV JAVA_HOME=/opt/plantuml/jre-18
COPY --from=corretto-jdk /plantuml/customjre $JAVA_HOME
COPY ./puppeteer.json /opt/mmdc/etc/puppeteer.json
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ] 

RUN npm install --global mathjax-node-cli @mermaid-js/mermaid-cli && \
    rm -rf /usr/local/lib/node_modules/@mermaid-js/mermaid-cli/node_modules/puppeteer/.local-chromium

RUN gem install jekyll bundler

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV PATH="${JAVA_HOME}/bin:/opt/plantuml/bin:/opt/mmdc/bin:${PATH}"

ENTRYPOINT [ "/entrypoint.sh" ] 
