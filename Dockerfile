FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

ADD install.sh /app/

RUN mkdir -m 0777 /build /workspaces &&\
    apt-get update &&\
    apt-get install -y \
        p7zip-full \
        binutils-mips-linux-gnu \
        build-essential \
        pkgconf \
        python3 \
        git \
        zip \
        wget \
        curl \
        libsdl2-dev

CMD ["sh", "-c", "/app/install.sh"]
