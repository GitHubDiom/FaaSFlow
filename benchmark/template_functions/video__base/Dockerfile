FROM codeless_base
RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y --force-yes install yasm ffmpeg