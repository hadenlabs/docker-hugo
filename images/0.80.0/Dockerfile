FROM alpine

LABEL description="Docker container for building static sites with the Hugo static site generator."
LABEL maintainer="Luis Mayta <slovacus@gmail.com>"

# Download and install hugo
ENV HUGO_VERSION=0.80.0
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit
# By default, serve site
ENV HUGO_BASE_URL http://localhost:1313

ENV LIBRARY_DEPS \
    py-pygments \
    wget \
    bash

ENV RUNTIME_DEPS curl \
  git

# Install pygments (for syntax highlighting) and bash
RUN apk update \
    && apk add ${LIBRARY_DEPS} ${RUNTIME_DEPS} \
    && rm -rf /usr/local/bin/hugo \
    && wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz -P /usr/local/ \
    && tar xzf /usr/local/${HUGO_BINARY}.tar.gz -C /usr/local/ \
    && ln -s /usr/local/hugo /usr/local/bin/hugo \
    && rm -rf /usr/local/${HUGO_BINARY}.tar.gz \
    && rm -rf /var/cache/apk/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 1313

WORKDIR /src
ENTRYPOINT [ "/usr/local/bin/hugo" ]
