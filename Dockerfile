FROM        ubuntu:xenial

MAINTAINER  packeteer

RUN         apt-get update \
            && apt-get install -y openssl wget xvfb libxrender1 fontconfig libjpeg-turbo8 xfonts-75dpi \
            && wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb \
            && dpkg -i wkhtmltox_0.12.5-1.xenial_amd64.deb \
            && rm wkhtmltox_0.12.5-1.xenial_amd64.deb \
            && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD         ["/bin/bash"]
