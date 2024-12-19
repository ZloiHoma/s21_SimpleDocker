#!/bin/bash

gcc main.c -lfcgi -o webserver
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n webserver
tail -f /dev/null


