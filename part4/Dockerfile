FROM nginx:latest
WORKDIR /home/ 

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./main.c .
COPY ./start.sh .

RUN apt-get update && apt-get install -y gcc libfcgi-dev spawn-fcgi && chmod +x start.sh 
ENTRYPOINT [ "sh", "./start.sh" ]

