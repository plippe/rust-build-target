# Rust builder for GL-AR150 with 2.27 firmware
# https://www.gl-inet.com/ar150/
# https://www.gl-inet.com/firmware/ar150/v1/lede-ar150-2.27.bin

FROM rust

RUN rustup target add mipsel-unknown-linux-musl

RUN mkdir -p /opt/openwrt_sdk/ && \
    cd /opt/openwrt_sdk/ && \
    wget https://downloads.openwrt.org/releases/17.01.4/targets/ar71xx/generic/lede-sdk-17.01.4-ar71xx-generic_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz && \
    tar -xf *.tar.xz --strip-components=1 && \
    mv /opt/openwrt_sdk/staging_dir/toolchain-* /opt/openwrt_sdk/staging_dir/toolchain

ENV PATH="/opt/openwrt_sdk/staging_dir/toolchain/bin:$PATH"

ENV TARGET="mipsel-unknown-linux-musl"
ENV LINKER="mips-openwrt-linux-gcc"
