FROM lukr/coder
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# python3.6
RUN apt install -y --no-install-recommends \
    python3.6 \
    python3-pip \
    python3-distutils \
    python3-testresources \
#    python3-widgetsnbextension \
#    && rm -rf /var/lib/apt/lists/* \
    && apt clean \
    && apt autoclean \
    && cd /usr/bin \
    && ln -s python3.6 python \
    && ln -s python3.6 py3 \
    && ln -s python3.6 py


# install pip
RUN curl https://bootstrap.pypa.io/get-pip.py \
        -o get-pip.py \
    && python get-pip.py \
		--disable-pip-version-check \
		--no-cache-dir \
    && rm get-pip.py \
    && python -m pip install \
                cffi \
                ipython \
                virtualenv
                
CMD python -V && python