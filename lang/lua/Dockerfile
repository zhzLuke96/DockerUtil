FROM lukr/coder
LABEL maintainer="lukr96 <zhz961101@gamil.com>"

ENV LUA_VERSION 5.3.5

RUN curl -R -O http://www.lua.org/ftp/lua-$LUA_VERSION.tar.gz \
    && tar zxf lua-$LUA_VERSION.tar.gz \
    && rm lua-$LUA_VERSION.tar.gz \
    && cd lua-$LUA_VERSION \
    && make linux test \
    && make install \
    && cd .. \
    && rm -r lua-$LUA_VERSION

CMD lua -v && lua