FROM ubuntu:14.04
MAINTAINER think@hotmail.de

ENV AFFDEX_DATA_DIR /affdex-sdk/data
COPY detect.sh /

RUN apt-get update && apt-get install -y \
    wget \
    tar \
    gzip \
    build-essential \
    libopencv-dev \
    libboost1.55-all-dev \
    cmake \
    git \
 && wget https://download.affectiva.com/linux/affdex-cpp-sdk-3.1.1-2802-linux-64bit.tar.gz \
 && mkdir /affdex-sdk \
 && tar -xzvf /affdex-cpp-sdk-3.1.1-2802-linux-64bit.tar.gz -C /affdex-sdk \
 && git clone https://github.com/Affectiva/cpp-sdk-samples.git /sdk-samples \
 && mkdir build \
 && (cd build && cmake -DOpenCV_DIR=/usr/ -DBOOST_ROOT=/usr/ -DAFFDEX_DIR=/affdex-sdk /sdk-samples && make) \
 && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/affdex-sdk/lib \
 && chmod +x /detect.sh \
 && ln /dev/null /dev/raw1394

WORKDIR "/build/video-demo"

ENTRYPOINT ["/detect.sh"]
CMD []
