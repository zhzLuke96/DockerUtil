FROM lukr/coder
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# GoPath
ENV GOROOT /usr/local/go
ENV GOPATH /data/go
ENV PATH $GOROOT/bin:$PATH

# compiler
RUN apt install -y --no-install-recommends \
    && apt clean \
    && apt autoclean

# pull GO 1.11.4
RUN curl -s -o go.tar.gz \
    https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz \
    && tar --remove-files -C /usr/local/ -zxf go.tar.gz \
    && ln -sv /usr/local/go/bin/go /bin \
    && rm go.tar.gz

CMD go version