#!/bin/bash
set -e

# FOREACH FOR TWITCH/KICK
for TW_ENDPOINT in $TWITCH_ENDPOINTS; do
    echo "                        push rtmp://ingest.global-contribute.live-video.net/app/$TW_ENDPOINT;" >> /etc/nginx/nginx.conf
done

for KC_ENDPOINT in $KICK_ENDPOINTS; do
    echo "                        push rtmp://127.0.0.1:7001/app/$KC_ENDPOINT;" >> /etc/nginx/nginx.conf
    
done




echo "}" >> /etc/nginx/nginx.conf
echo "}" >> /etc/nginx/nginx.conf
echo "}" >> /etc/nginx/nginx.conf

# RUN STUNNEL AND NGINX
stunnel /etc/stunnel/stunnel.conf
exec nginx -g 'daemon off;'