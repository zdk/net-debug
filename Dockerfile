FROM ubuntu:plucky

WORKDIR /root

RUN apt-get update -qq && \
                   apt-get install -y apt-transport-https \
                   ca-certificates \
                   software-properties-common \
                   vim \
                   screen \
                   curl \
                   wget \
                   gnupg \
                   atop \
                   htop \
                   dstat \
                   jq \
                   dnsutils \
                   tcpdump \
                   traceroute \
                   iptables \
                   net-tools \
                   socat \
                   iproute2 \
                   telnet \
                   openssl

CMD [ "/bin/bash" ]
