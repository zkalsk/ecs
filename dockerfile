FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx
RUN chown -R www-data:www-data /var/lib/nginx
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]


# Expose ports.
EXPOSE 80
EXPOSE 443
