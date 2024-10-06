# Use an Ubuntu base image
FROM ubuntu:latest

# Install necessary dependencies to build ffmpeg and libshine
RUN apt-get update && apt-get install -y \
    autoconf \
    automake \
    build-essential \
    cmake \
    git \
    libass-dev \
    libfreetype6-dev \
    libgnutls28-dev \
    libmp3lame-dev \
    libnuma-dev \
    libopus-dev \
    libsdl2-dev \
    libtool \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libvpx-dev \
    libx264-dev \
    libx265-dev \
    libxcb1-dev \
    libxcb-shm0-dev \
    libxcb-xfixes0-dev \
    meson \
    nasm \
    pkg-config \
    texinfo \
    wget \
    yasm \
    zlib1g-dev \
    libshine-dev

# Clone the ffmpeg source code
RUN git clone https://git.ffmpeg.org/ffmpeg.git /ffmpeg

# Configure and build ffmpeg with libshine
RUN cd /ffmpeg && \
    ./configure --prefix=/ffmpeg/build --enable-gpl --enable-libass --enable-libfreetype --enable-libmp3lame --enable-libopus --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libx265 --enable-nonfree --enable-libshine && \
    make && \
    make install

# Copy the built ffmpeg binaries to a specific directory
RUN mkdir -p /ffmpeg/build && \
    cp -r /ffmpeg/build/* /ffmpeg/
