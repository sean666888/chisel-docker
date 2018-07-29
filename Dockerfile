FROM jpillora/chisel
RUN apk add --no-cache certbot nginx
RUN rm /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf
RUN rc-service nginx start
ENTRYPOINT ["chisel"]
