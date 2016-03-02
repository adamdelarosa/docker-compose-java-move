FROM java
MAINTAINER gojiradam@gmail.com

RUN apt-get update
RUN apt-get install -y apache2

COPY index.html /var/www

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["apachectl"]
