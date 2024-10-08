FROM ubuntu:latest
RUN apt-get update && apt-get install -y apache2 zip unzip wget
WORKDIR /var/www/html
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/listrace.zip
RUN unzip listrace.zip
RUN cp -rvf listrace.zip/* .
RUN rm -rf listrace listrace.zip
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
