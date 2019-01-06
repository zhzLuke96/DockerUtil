FROM ubuntu
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# init sources from china lib
RUN rm /etc/apt/sources.list
COPY sources.list /etc/apt/sources.list
RUN apt-get update
#    && apt-get upgrade

# workspace dir
RUN mkdir /data \
    && mkdir /data/go \
    && mkdir /data/py \
    && mkdir /data/js \
    && mkdir /data/cpp \
    && mkdir /data/c \
    && mkdir /data/lua \
    && mkdir /data/hs

# install common tool
RUN apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    wget \
    vim \
    git

# compiler
RUN apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    g++ \
    libc6-dev \
    make \
    pkg-config \
    python3.6 \
    python3-pip \
    python3-distutils \
    python3-testresources \
#    python3-widgetsnbextension \
#    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && apt-get autoclean

# pull GO
RUN curl -s -o go.tar.gz \
    https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz \
    && tar --remove-files -C /usr/local/ -zxf go.tar.gz \
    && ln -sv /usr/local/go/bin/go /bin \
    && rm go.tar.gz

# python3.6 => py;py3;python 
# && install python lib
RUN cd /usr/bin \
    && ln -s python3.6 python \
    && ln -s python3.6 py3 \
    && ln -s python3.6 py \
    && curl https://bootstrap.pypa.io/get-pip.py \
        -o get-pip.py \
    && python get-pip.py \
		--disable-pip-version-check \
		--no-cache-dir \
    && rm get-pip.py \
    && python -m pip install \
                ipython \
                virtualenv
                

# install pypy3
RUN wget -qO pypy3.tar.bz2 \
    https://bitbucket.org/pypy/pypy/downloads/pypy3-v6.0.0-linux64.tar.bz2 \
    && tar -xjf pypy3.tar.bz2 \
    && mv pypy3-v6.0.0-linux64 pypy3 \
    && mv pypy3 /usr/lib/ \
    && rm pypy3.tar.bz2 \
    && cd /usr/bin \
    && ln -s /usr/lib/pypy3/bin/pypy3 pypy3 \
    && ln -s /usr/lib/pypy3/bin/pypy3 pypy 
#    && wget -q https://bootstrap.pypa.io/get-pip.py \
#    && apt-get install -y openssl libssl-dev \
#    && pypy get-pip.py \
#    && rm get-pip.py \
#    && pypy3 -m ensurepip \
#    && pypy3 -m pip install -U pip setuptools wheel

# RUN pypy3 -m pip install numpy

# GoPath
ENV GOROOT /usr/local/go
ENV GOPATH /data/go
ENV PATH $GOROOT/bin:$PATH

CMD go version && python -V && pypy3 -V
