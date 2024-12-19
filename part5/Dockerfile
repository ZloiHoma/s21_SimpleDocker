FROM nginx
WORKDIR /home/
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./main.c /home/main.c
COPY ./start.sh /home/start.sh

RUN apt-get update &&  \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \ 
    rm -rf /var/lib/apt/lists && \
    gcc server.c -o webserver -lpthread -lfcgi && \
    chmod +x /start.sh; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; 

USER nginx
ENTRYPOINT ["sh", "./start.sh"]
HEALTHCHECK NONE

