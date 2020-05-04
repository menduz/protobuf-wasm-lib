FROM trzeci/emscripten:1.39.10-upstream

RUN apt-get update -y  && apt-get --no-install-recommends -y install \
    autoconf \
    autotools-dev \
    automake \
    autogen \
    libtool && ln -s /usr/bin/libtoolize /usr/bin/libtool

