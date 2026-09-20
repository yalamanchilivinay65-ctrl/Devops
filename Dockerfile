FROM nginx:latest
EXPOSE 80
MAINTAINER Gowri Shankar Vinay
LABEL This is a Movie Booking Platform
COPY movies.html /usr/share/nginx/html/movies.html 
