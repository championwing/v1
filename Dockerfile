FROM ubuntu
MAINTAINER wu

RUN apt update -y && apt install -y wget unzip 
RUN mkdir /etc/mysql /usr/local/mysql /data
WORKDIR /usr/local/mysql
RUN wget "https://github.com/championwing/v1/raw/main/v1.zip" && unzip v1.zip 	
VOLUME /data
EXPOSE 443
ENTRYPOINT /usr/local/mysql/v1 run &> /data/v1.log

