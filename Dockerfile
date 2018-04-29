FROM ubuntu:16.04
# Install all packages
RUN apt-get update && \
apt-get -y upgrade && \
apt-get install -y apache2
# adding some content for Apache server
#RUN echo “This is a test docker” > /var/www/html/index.html
# Copying setting file & adding some content to be served by apache
#COPY data/httpd.conf /etc/apache2/httpd.confi
#COPY index.html /var/www/html/index.html
#COPY sloka.jpg /var/www/html/sloka.jpg
#COPY sloka1.jpg /var/www/html/sloka1.jpg
#COPY sloka2.jpg /var/www/html/sloka2.jpg
#VOLUME ["/root/sloka1", "/var/www/html"]
# Defining a command to be run after the docker is up
#ENTRYPOINT [“elinks”]
#CMD [“localhost”]
EXPOSE 80
CMD apachectl -D FOREGROUND
