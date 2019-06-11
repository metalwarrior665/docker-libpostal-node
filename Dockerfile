FROM node:10

RUN apt-get install git
RUN apt-get install curl autoconf automake libtool pkg-config

RUN git clone https://github.com/openvenues/libpostal \
&& cd libpostal \
&& ./bootstrap.sh \
&& ./configure --datadir=/home/libpostal \
&& make \
&& make install

RUN npm install -g node-gyp