FROM ubuntu:16.04

MAINTAINER JiangWeiGitHub <wei.jiang@winsuntech.cn>

# Update apt sourcelist
RUN echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list

# update apt
RUN apt-get update

# install minidlna
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install minidlna

# delete minidlna conf & using mine
RUN rm /etc/minidlna.conf && mkdir -p /data/minidlna && touch /data/minidlna/minidlna.conf && ln -s /data/minidlna/minidlna.conf /etc/

EXPOSE 8080/tcp 8200/tcp 1900/udp

CMD ["/usr/sbin/minidlnad", "-d"]
