FROM ubuntu:14.04
MAINTAINER think@hotmail.de

RUN apt-get update && apt-get install -y \
  wget curl tar gzip build-essential libopencv-dev libboost1.55-all-dev cmake git

RUN wget https://download.affectiva.com/linux/affdex-cpp-sdk-3.1.1-2802-linux-64bit.tar.gz
RUN mkdir /affdex-sdk
RUN tar -xzvf /affdex-cpp-sdk-3.1.1-2802-linux-64bit.tar.gz -C /affdex-sdk
ENV AFFDEX_DATA_DIR /affdex-sdk/data
RUN git clone https://github.com/Affectiva/cpp-sdk-samples.git /sdk-samples
RUN mkdir build
RUN cd build && cmake -DOpenCV_DIR=/usr/ -DBOOST_ROOT=/usr/ -DAFFDEX_DIR=/affdex-sdk /sdk-samples \
 && make \
 && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/affdex-sdk/lib

WORKDIR "/build/video-demo"
COPY detect.sh /build/video-demo/detect.sh
RUN chmod +x /build/video-demo/detect.sh
RUN sudo ln /dev/null /dev/raw1394

ENTRYPOINT ["/build/video-demo/detect.sh"]
CMD []
