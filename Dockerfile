FROM ubuntu:24.04

# إضافة iproute2 (لأمر ss) و net-tools (لأمر netstat) للتشخيص
RUN apt-get update && apt-get install --no-install-recommends -y \
    python3 \
    python3-uvloop \
    python3-cryptography \
    python3-socks \
    libcap2-bin \
    ca-certificates \
    iproute2 \
    net-tools && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/tgproxy/

COPY mtprotoproxy.py config.py /home/tgproxy/

USER root