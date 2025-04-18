FROM ubuntu:latest
WORKDIR /app
COPY index.html /var/www/html/index.html
RUN apt-get update && \
    apt-get install nginx -y 
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
