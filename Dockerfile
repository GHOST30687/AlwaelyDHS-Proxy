FROM ubuntu:24.04

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3 python3-uvloop python3-cryptography python3-socks libcap2-bin ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# تعيين مسار العمل
WORKDIR /home/tgproxy/

# نسخ ملفات البروكسي
COPY mtprotoproxy.py config.py /home/tgproxy/

# نحتاج صلاحيات Root لتشغيل بورت 443
USER root

# ملاحظة: تم حذف سطر CMD ليعتمد النظام كلياً على الأوامر المعرفة في [processes] بملف fly.toml