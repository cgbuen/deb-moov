FROM debian
SHELL ["/bin/bash", "--login", "-c"]

RUN apt-get update
RUN apt-get install -y libperl4-corelibs-perl curl lsof gawk wget git vim
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
RUN nvm install 6.10.3
RUN wget -O moov.deb https://downloads.moovweb.com/dist/deb/moovweb-6.3.106_amd64.deb
RUN dpkg -i moov.deb
RUN rm moov.deb
