FROM lukr/base
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# workspace dir
RUN mkdir /data \
    && mkdir /data/go \
    && mkdir /data/py \
    && mkdir /data/js \
    && mkdir /data/cpp \
    && mkdir /data/c \
    && mkdir /data/lua \
    && mkdir /data/hs

# tool
RUN apt install -y --no-install-recommends \
    openssl \
    libffi-dev \
    pkg-config \
#    libexpat1-dev \
#    libgdbm-dev \
#    tk-dev \
    libgc-dev \
    liblzma-dev \
#    libncursesw5-dev \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libsqlite3-dev \
    build-essential \
    libc6-dev \
    libreadline-dev \
    make \
    git \
    vim \
    gcc \
    g++ \
    && apt clean \
    && apt autoclean

# .vimrc
RUN wget -qO ~/.vimrc \
    https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim \
    && echo "set number" >> ~/.vimrc

