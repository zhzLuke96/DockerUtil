FROM lukr/coder
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# pypy3
RUN wget -qO pypy3.tar.bz2 \
    https://bitbucket.org/pypy/pypy/downloads/pypy3-v6.0.0-linux64.tar.bz2 \
    && tar -xjf pypy3.tar.bz2 \
    && mv pypy3-v6.0.0-linux64 pypy3 \
    && mv pypy3 /usr/lib/ \
    && rm pypy3.tar.bz2 \
    && cd /usr/bin \
    && ln -s /usr/lib/pypy3/bin/pypy3 pypy3
    # && ln -s /usr/lib/pypy3/bin/pypy3 pypy

# install pypy3 pip
# RUN apt-get install -y --no-install-recommends \
#     python-cffi \
#     && curl https://bootstrap.pypa.io/get-pip.py \
#         -o get-pip.py \
#     && pypy3 get-pip.py \
# 		--disable-pip-version-check \
# 		--no-cache-dir \
#     && rm get-pip.py \
#    && pypy3 -m ensurepip \
#    && pypy3 -m pip install -U pip setuptools wheel

# RUN pypy3 -m pip install numpy

# install pypy2 and pip
RUN apt -y install pypy \
    && curl https://bootstrap.pypa.io/get-pip.py | pypy


CMD pypy3 -V && pypy -V && pypy