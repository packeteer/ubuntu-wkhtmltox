FROM        ubuntu:xenial

MAINTAINER  packeteer

RUN         apt-get update \
            && apt-get install -y openssl wget zip unzip tar xz-utils gzip openssh-client git xvfb libxrender1 fontconfig \
            && dpkg -i https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb \
            && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD         ["/bin/bash"]
