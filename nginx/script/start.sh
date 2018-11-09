#!/bin/bash

echo Deployment Envoronment = $DEP_ENV

cp /usr/share/nginx/script/${DEP_ENV}.json /usr/share/nginx/html/config.json
echo Copy config file to nginx/html successfluly

echo Nginx is statring...
nginx
echo success