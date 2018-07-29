FROM jpillora/chisel
RUN adduser -m heroku
USER heroku
EXPOSE 5000
CMD chisel server --auth $CHISEL_AUTH --socks5
