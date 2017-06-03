FROM nginx:1.12.0-alpine

RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body
RUN mkdir -p /etc/nginx/sites-enabled

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/sites-enabled/default
COPY website /var/www


CMD ["nginx", "-g", "daemon off;"]
