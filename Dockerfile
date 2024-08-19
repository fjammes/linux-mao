FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

ENV GUITARIX_VERSION V0.46.0

RUN apt-get update -y && apt-get install -y \
        apt-utils \
        git \
        sudo \
        gperf \
        intltool \
        libavahi-gobject-dev \
        libbluetooth-dev \
        libboost-dev \
        libboost-iostreams-dev \
        libboost-system-dev \
        libboost-thread-dev \
        libeigen3-dev \
        libgtk-3-dev \
        libgtkmm-3.0-dev \
        libjack-dev \
        liblilv-dev \
        liblrdf0-dev \
        libsndfile1-dev \
        libfftw3-dev \
        lv2-dev \
        python3 \
        sassc \
    && rm -rf /var/lib/apt/lists/*


RUN sudo update-alternatives --install /usr/bin/python python /usr/bin/python3

RUN git clone --depth 1 --branch $GUITARIX_VERSION https://github.com/brummer10/guitarix.git && \
    cd guitarix && \
    git submodule update --init --recursive && \
    cd trunk && \
    ./waf configure --prefix=/usr --includeresampler --includeconvolver --optimization && \
    ./waf build && \
    sudo ./waf install



