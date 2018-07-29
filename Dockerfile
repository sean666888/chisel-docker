FROM jpillora/chisel
RUN useradd -m heroku
USER heroku
EXPOSE 5000
ENV CHISEL_AUTH root:toor
CMD chisel server --auth $CHISEL_AUTH --socks5

