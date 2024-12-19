#!/bin/bash

gcc main.c -lfcgi -o webserver
service nginx start
spawn-fcgi -p 8080 ./webserver
nginx -s reload
tail -f /dev/null
