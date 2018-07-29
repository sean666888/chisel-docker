FROM jpillora/chisel
RUN apk add --no-cache certbot nginx
RUN rc-service nginx start
ENTRYPOINT ["chisel"]
