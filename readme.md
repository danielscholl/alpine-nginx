#Instructions

### Build the container
docker build -t alpine-nginx:latest .

### Use the container in your own dockerfile.

#### Override site.conf
copy your site.conf to /etc/nginx/sites-enabled/default

#### Copy you static files
copy your html directory to /var/www

#### Run your container
docker run -it -p 80:80 alpine-nginx


#### Sample Dockerfile using it
```bash
FROM alpine-nginx
MAINTAINER Daniel Scholl
COPY site.conf /etc/nginx/sites-enabled/default
COPY src /var/www
```
