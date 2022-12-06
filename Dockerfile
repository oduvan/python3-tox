FROM python:3.10-buster
RUN apt-get update
RUN apt-get install -y make build-essential libssl-dev zlib1g-dev \
       libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
       libncurses5-dev libncursesw5-dev xz-utils tk-dev

RUN wget https://www.python.org/ftp/python/3.6.15/Python-3.6.15.tgz
RUN tar xvf Python-3.6.15.tgz
RUN cd Python-3.6.15 && ./configure --enable-optimizations --with-ensurepip=install && make -j 8 && make altinstall
RUN rm -rf Python-3.6.15*

RUN wget https://www.python.org/ftp/python/3.7.15/Python-3.7.15.tgz
RUN tar xvf Python-3.7.15.tgz
RUN cd Python-3.7.15 && ./configure --enable-optimizations --with-ensurepip=install && make -j 8 && make altinstall
RUN rm -rf Python-3.7.15*

RUN wget https://www.python.org/ftp/python/3.8.15/Python-3.8.15.tgz
RUN tar xvf Python-3.8.15.tgz
RUN cd Python-3.8.15 && ./configure --enable-optimizations --with-ensurepip=install && make -j 8 && make altinstall
RUN rm -rf Python-3.8.15*

RUN wget https://www.python.org/ftp/python/3.9.15/Python-3.9.15.tgz
RUN tar xvf Python-3.9.15.tgz
RUN cd Python-3.9.15 && ./configure --enable-optimizations --with-ensurepip=install && make -j 8 && make altinstall
RUN rm -rf Python-3.9.15*

RUN wget https://www.python.org/ftp/python/3.5.10/Python-3.5.10.tgz
RUN tar xvf Python-3.5.10.tgz
RUN cd Python-3.5.10 && ./configure --enable-optimizations --with-ensurepip=install && make -j 8 && make altinstall
RUN rm -rf Python-3.5.10*

RUN python3 -mpip install tox
