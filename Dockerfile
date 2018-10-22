FROM centos:7

LABEL maintainer="t.a.nutma@rug.nl"
LABEL description="Docker image for building and running WISE software"

RUN yum -y update \
    # Install Git.
    # The default version of Git packages for CentOS 7 is not new enough,
    # so pull one from the ius repository (https://ius.io).
    && yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum -y install git2u \
    # Install furhter dependencies.
    && yum -y install \
    autoconf \
    automake \
    bzip2-devel \
    ed \
    file \
    gcc \
    gcc-c++ \
    gcc-gfortran \
    libaio-devel \
    libjpeg-turbo-devel \
    libpng-devel \
    libtiff-devel \
    libtool \
    make \
    openssh-clients \
    openssl-devel \
    readline-devel \
    rsync \
    sqlite \
    sqlite-devel \
    tcl-devel \
    tk-devel \
    wget \
    which \
    zlib-devel \
    && yum clean all \
    && rm -rf /var/cache/yum
