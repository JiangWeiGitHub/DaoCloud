FROM ubuntu:14.04

MAINTAINER JiangWeiGitHub <wei.jiang@winsuntech.cn>

# update apt
RUN apt-get update

# install essential packages with apt-get
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget

# install nodejs
RUN wget https://nodejs.org/dist/v6.8.0/node-v6.8.0-linux-x64.tar.xz \
 && tar Jxf node-v6.8.0-linux-x64.tar.xz \
 && \cp -rf ./node-v6.8.0-linux-x64/* /usr/local/

# make home folder
RUN mkdir /benchmark/

# copy test file
COPY ./server.js /benchmark/

EXPOSE 80/tcp

WORKDIR "/benchmark/"

CMD ["node", "server.js"]
