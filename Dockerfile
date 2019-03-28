FROM ubuntu:16.04

WORKDIR /build
ENV PATH="/android_build/bin:${PATH}"
ENV USE_CCACHE=1
ENV CCACHE_DIR=/ccache

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk git-core sudo bc libssl-dev gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip python ccache && \
    mkdir -p /android_build/bin && \
    curl https://storage.googleapis.com/git-repo-downloads/repo > /android_build/bin/repo && \
    chmod a+x /android_build/bin/repo && \
    rm -rf /var/cahce/apt && \
    rm -rf /var/lib/apt/lists

CMD "/bin/bash"

