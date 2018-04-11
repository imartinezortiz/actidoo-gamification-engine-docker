#!/bin/bash

PG_USER=${PG_USERI:-gengine}
PG_PASS=${PG_PASS:-gengine}
PG_DATABASE=${PG_DATABASE:-gengine}
if [ ! -f /installed ]; then
  sed -i "s#^sqlalchemy\.url.*#sqlalchemy.url = postgres://$PG_USER:$PG_PASS@db/$PG_DATABASE#" /app/production.ini
  sed -i 's#^urlcache_url.*#urlcache_url = memcached:11211#' /app/production.ini

  initialize_gengine_db production.ini

  touch /installed 
fi

exec pserve production.ini
