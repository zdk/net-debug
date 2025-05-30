FROM ubuntu:plucky
WORKDIR /root
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gnupg \
                   apt-transport-https \
                   ca-certificates \
                   software-properties-common \
                   vim \
                   strace \
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
                   tshark \
                   traceroute \
                   iptables \
                   net-tools \
                   iputils-ping \
                   socat \
                   iproute2 \
                   telnet \
                   openssl \
                   redis-tools \
                   postgresql-client

RUN echo 'cat << "EOF"' >> /root/.bashrc && \
                   echo '███    ██ ███████ ████████       ██████  ███████ ██████  ██    ██  ██████' >> /root/.bashrc && \
                   echo '████   ██ ██         ██          ██   ██ ██      ██   ██ ██    ██ ██' >> /root/.bashrc && \
                   echo '██ ██  ██ █████      ██    █████ ██   ██ █████   ██████  ██    ██ ██   ███' >> /root/.bashrc && \
                   echo '██  ██ ██ ██         ██          ██   ██ ██      ██   ██ ██    ██ ██    ██' >> /root/.bashrc && \
                   echo '██   ████ ███████    ██          ██████  ███████ ██████   ██████   ██████' >> /root/.bashrc && \
                   echo 'EOF' >> /root/.bashrc && \
                   echo 'echo' >> /root/.bashrc && \
                   echo 'echo "========================================================================="' >> /root/.bashrc && \
                   echo 'echo "|                  Network Debugging Container                          |"' >> /root/.bashrc && \
                   echo 'echo "========================================================================="' >> /root/.bashrc && \
                   echo 'echo' >> /root/.bashrc

CMD [ "/bin/bash" ]
