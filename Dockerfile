FROM ubuntu
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get update && apt-get install -y git
RUN rm -rf  /var/www/html/* && git clone https://github.com/hshar/website.git
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name Devops Intellipaat
