FROM ubuntu:24.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3 python3-uvloop python3-cryptography python3-socks libcap2-bin ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# ملاحظة: في Ubuntu 24.04 المسار هو python3 فقط
WORKDIR /home/tgproxy/
COPY mtprotoproxy.py config.py /home/tgproxy/

# أهم سطرين:
USER root
CMD ["python3", "mtprotoproxy.py"]