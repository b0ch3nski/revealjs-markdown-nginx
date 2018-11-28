FROM nginx:alpine
LABEL maintainer="Piotr Bocheński <bochenski.piotr@gmail.com>"

WORKDIR /usr/share/nginx/html

ARG RJS_VERSION=master
RUN rm -r * \
    && apk add --no-cache --virtual .fetch-deps git \
    && git clone \
        --depth 1 \
        --single-branch \
        --branch ${RJS_VERSION} \
        https://github.com/hakimel/reveal.js.git . \
    && rm -r .git/ \
    && apk del .fetch-deps

COPY index.html index.md ./
