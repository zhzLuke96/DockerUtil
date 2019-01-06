FROM lukr/coder
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

# install npm nodejs 
RUN apt install -y nodejs npm \
    && npm install -g n \
    # && n stable \
    && npm install -g cnpm \
    --registry=https://registry.npm.taobao.org

CMD node -v && node