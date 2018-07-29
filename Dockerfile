FROM jpillora/chisel
RUN adduser -D heroku
USER heroku
EXPOSE 5000
CMD chisel server --auth $CHISEL_AUTH --socks5
