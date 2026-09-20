FROM nginx:latest
EXPOSE 80
MAINTAINER Gowri Shankar Vinay
LABEL This is a Movie Booking Platform
COPY index.html /usr/share/nginx/html/index.html 
