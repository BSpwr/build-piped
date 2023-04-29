#! /usr/bin/env sh

if [ -n "$PIPED_API_URL" ]; then
    sed -i s/pipedapi.kavin.rocks/$PIPED_API_URL/g /usr/share/nginx/html/assets/*
fi

/docker-entrypoint.sh && nginx -g "daemon off;"