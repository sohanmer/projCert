FROM devopsedu/webapp

RUN apt-get update -y
RUN apt-get install -y apache2

RUN apt-get install -y php

RUN rm -rf /var/www/html/*
COPY website /var/www/html/

EXPOSE 8080

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

