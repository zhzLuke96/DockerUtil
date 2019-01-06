FROM ubuntu
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# init sources from china lib
# install common tool
RUN rm /etc/apt/sources.list
COPY 163.list /etc/apt/sources.list
RUN apt-get update \
    && apt -y install --reinstall ca-certificates \
    && apt install -y --no-install-recommends \
    curl \
    wget
#    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]