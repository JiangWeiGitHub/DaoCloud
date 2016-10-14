FROM ubuntu:14.04

MAINTAINER JiangWeiGitHub <wei.jiang@winsuntech.cn>

# update apt
RUN apt-get update

# install essential packages with apt-get
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget git

# install nodejs
RUN wget https://nodejs.org/dist/v6.8.0/node-v6.8.0-linux-x64.tar.xz \
 && tar Jxf node-v6.8.0-linux-x64.tar.xz \
 && \cp -rf ./node-v6.8.0-linux-x64/* /usr/local/

# make some folders
RUN mkdir -p /git/ \
 && cd /git/ \
 && git clone https://github.com/Amberact/waterwheel.git \
 && cd waterwheel

# install npm packages
RUN cd /git/waterwheel/ \
 && npm install -g nodemon babel-cli \
 && npm install

EXPOSE 80/tcp

WORKDIR "/git/waterwheel/"

CMD ["npm", "run", "devel"]
