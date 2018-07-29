FROM jpillora/chisel
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN apk add --no-cache certbot nginx OpenRC
RUN rm /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf
RUN rc-service nginx start
ENTRYPOINT ["chisel"]
