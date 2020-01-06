FROM ubuntu:bionic
RUN apt-get update -q \
  && apt-get install -qy openvpn iptables socat curl mysql-client bridge-utils net-tools
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
