FROM nginx

ARG DEP_ENV
ENV DEP_ENV $DEP_ENV

WORKDIR /usr/share/nginx/script

COPY ./nginx/script /usr/share/nginx/script
COPY ./nginx/html /usr/share/nginx/html

RUN chmod 755 /usr/share/nginx/script/start.sh

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf 

CMD ["./start.sh"]